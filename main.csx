#load "ump.csx"

using System.Linq;
using System.Drawing;

class BingoLoader : UMPLoader
{
    public override string CodePath => "code/";

    public override bool UseGlobalScripts => true;

    public override string[] Symbols => chnum switch
    {
        1 => new[] { "CHAPTER_1" },
        2 => new[] { "CHAPTER_2" },
        3 => new[] { "CHAPTER_3" },
        4 => new[] { "CHAPTER_4" },
        5 => new[] { "CHAPTER_5" },
        6 => new[] { "CHAPTER_6" },
        7 => new[] { "CHAPTER_7" },
        _ => throw new NotImplementedException()
    };

    public override string[] GetCodeNames(string filePath)
    {
        List<string> entries = new List<string>();
        string fileName = Path.GetFileNameWithoutExtension(filePath);

        if(filePath.Contains("all_chapters") || filePath.Contains($"chapter{chnum}"))
            entries.Add(fileName);

        return entries.ToArray();
    }

    public BingoLoader(UMPWrapper wrapper, int chapter) : base(wrapper)
    {
        chnum = chapter;
    }

    public int chnum { get; set; }
}

void BuildMod(int chapter)
{
    BingoLoader loader = new BingoLoader(UMP_WRAPPER, chapter);
    string scriptPath = Path.GetDirectoryName(ScriptPath);

    // Import fnt_main from Chapter 1 into other chapters because for some reason the text acts really strange otherwise.
    // For example, the m/M and w/W letters on the board are shifted down-right IF you enter from Chapter Select and you're not on fullscreen.
    if(chapter > 1)
        RunUMTScript(Path.Combine(scriptPath, "fnt_main_ch1/ImportFontData.csx"));

    RunUMTScript(Path.Combine(scriptPath, "sprites/ImportGraphics.csx"));
    
    loader.Load();

    ScriptMessage($"BingoSync mod for DELTARUNE Chapter {chapter} was imported!");
}