package androidx.compose.foundation.text;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class KeyCommand {
    public static final KeyCommand A;
    public static final KeyCommand B;
    public static final KeyCommand C;
    public static final KeyCommand D;
    public static final KeyCommand E;
    public static final KeyCommand F;
    public static final KeyCommand G;
    public static final KeyCommand H;
    public static final KeyCommand I;
    public static final KeyCommand J;
    public static final KeyCommand K;
    public static final KeyCommand L;
    public static final KeyCommand M;
    public static final KeyCommand N;
    public static final KeyCommand O;
    public static final KeyCommand P;
    public static final KeyCommand Q;
    public static final KeyCommand R;
    public static final KeyCommand S;
    public static final KeyCommand T;
    public static final KeyCommand U;
    public static final KeyCommand V;
    public static final KeyCommand W;
    public static final KeyCommand X;
    public static final KeyCommand Y;
    public static final KeyCommand Z;
    public static final KeyCommand a0;
    public static final KeyCommand b0;
    public static final KeyCommand c0;
    public static final KeyCommand d0;
    public static final KeyCommand e0;
    public static final KeyCommand f0;
    public static final /* synthetic */ KeyCommand[] g0;
    public static final KeyCommand k;
    public static final KeyCommand l;
    public static final KeyCommand m;
    public static final KeyCommand n;
    public static final KeyCommand o;
    public static final KeyCommand p;
    public static final KeyCommand q;
    public static final KeyCommand r;
    public static final KeyCommand s;
    public static final KeyCommand t;
    public static final KeyCommand u;
    public static final KeyCommand v;
    public static final KeyCommand w;
    public static final KeyCommand x;
    public static final KeyCommand y;
    public static final KeyCommand z;
    public final boolean j;

    static {
        KeyCommand keyCommand = new KeyCommand(0, "LEFT_CHAR", false);
        k = keyCommand;
        KeyCommand keyCommand2 = new KeyCommand(1, "RIGHT_CHAR", false);
        l = keyCommand2;
        KeyCommand keyCommand3 = new KeyCommand(2, "RIGHT_WORD", false);
        m = keyCommand3;
        KeyCommand keyCommand4 = new KeyCommand(3, "LEFT_WORD", false);
        n = keyCommand4;
        KeyCommand keyCommand5 = new KeyCommand(4, "NEXT_PARAGRAPH", false);
        o = keyCommand5;
        KeyCommand keyCommand6 = new KeyCommand(5, "PREV_PARAGRAPH", false);
        p = keyCommand6;
        KeyCommand keyCommand7 = new KeyCommand(6, "LINE_START", false);
        q = keyCommand7;
        KeyCommand keyCommand8 = new KeyCommand(7, "LINE_END", false);
        r = keyCommand8;
        KeyCommand keyCommand9 = new KeyCommand(8, "LINE_LEFT", false);
        s = keyCommand9;
        KeyCommand keyCommand10 = new KeyCommand(9, "LINE_RIGHT", false);
        t = keyCommand10;
        KeyCommand keyCommand11 = new KeyCommand(10, "UP", false);
        u = keyCommand11;
        KeyCommand keyCommand12 = new KeyCommand(11, "DOWN", false);
        v = keyCommand12;
        KeyCommand keyCommand13 = new KeyCommand(12, "CENTER", false);
        w = keyCommand13;
        KeyCommand keyCommand14 = new KeyCommand(13, "PAGE_UP", false);
        x = keyCommand14;
        KeyCommand keyCommand15 = new KeyCommand(14, "PAGE_DOWN", false);
        y = keyCommand15;
        KeyCommand keyCommand16 = new KeyCommand(15, "HOME", false);
        z = keyCommand16;
        KeyCommand keyCommand17 = new KeyCommand(16, "END", false);
        A = keyCommand17;
        KeyCommand keyCommand18 = new KeyCommand(17, "COPY", false);
        B = keyCommand18;
        KeyCommand keyCommand19 = new KeyCommand(18, "PASTE", true);
        C = keyCommand19;
        KeyCommand keyCommand20 = new KeyCommand(19, "CUT", true);
        D = keyCommand20;
        KeyCommand keyCommand21 = new KeyCommand(20, "DELETE_PREV_CHAR", true);
        E = keyCommand21;
        KeyCommand keyCommand22 = new KeyCommand(21, "DELETE_NEXT_CHAR", true);
        F = keyCommand22;
        KeyCommand keyCommand23 = new KeyCommand(22, "DELETE_PREV_WORD", true);
        G = keyCommand23;
        KeyCommand keyCommand24 = new KeyCommand(23, "DELETE_NEXT_WORD", true);
        H = keyCommand24;
        KeyCommand keyCommand25 = new KeyCommand(24, "DELETE_FROM_LINE_START", true);
        I = keyCommand25;
        KeyCommand keyCommand26 = new KeyCommand(25, "DELETE_TO_LINE_END", true);
        J = keyCommand26;
        KeyCommand keyCommand27 = new KeyCommand(26, "SELECT_ALL", false);
        K = keyCommand27;
        KeyCommand keyCommand28 = new KeyCommand(27, "SELECT_LEFT_CHAR", false);
        L = keyCommand28;
        KeyCommand keyCommand29 = new KeyCommand(28, "SELECT_RIGHT_CHAR", false);
        M = keyCommand29;
        KeyCommand keyCommand30 = new KeyCommand(29, "SELECT_UP", false);
        N = keyCommand30;
        KeyCommand keyCommand31 = new KeyCommand(30, "SELECT_DOWN", false);
        O = keyCommand31;
        KeyCommand keyCommand32 = new KeyCommand(31, "SELECT_PAGE_UP", false);
        P = keyCommand32;
        KeyCommand keyCommand33 = new KeyCommand(32, "SELECT_PAGE_DOWN", false);
        Q = keyCommand33;
        KeyCommand keyCommand34 = new KeyCommand(33, "SELECT_HOME", false);
        R = keyCommand34;
        KeyCommand keyCommand35 = new KeyCommand(34, "SELECT_END", false);
        S = keyCommand35;
        KeyCommand keyCommand36 = new KeyCommand(35, "SELECT_LEFT_WORD", false);
        T = keyCommand36;
        KeyCommand keyCommand37 = new KeyCommand(36, "SELECT_RIGHT_WORD", false);
        U = keyCommand37;
        KeyCommand keyCommand38 = new KeyCommand(37, "SELECT_NEXT_PARAGRAPH", false);
        V = keyCommand38;
        KeyCommand keyCommand39 = new KeyCommand(38, "SELECT_PREV_PARAGRAPH", false);
        W = keyCommand39;
        KeyCommand keyCommand40 = new KeyCommand(39, "SELECT_LINE_START", false);
        X = keyCommand40;
        KeyCommand keyCommand41 = new KeyCommand(40, "SELECT_LINE_END", false);
        Y = keyCommand41;
        KeyCommand keyCommand42 = new KeyCommand(41, "SELECT_LINE_LEFT", false);
        Z = keyCommand42;
        KeyCommand keyCommand43 = new KeyCommand(42, "SELECT_LINE_RIGHT", false);
        a0 = keyCommand43;
        KeyCommand keyCommand44 = new KeyCommand(43, "DESELECT", false);
        b0 = keyCommand44;
        KeyCommand keyCommand45 = new KeyCommand(44, "NEW_LINE", true);
        c0 = keyCommand45;
        KeyCommand keyCommand46 = new KeyCommand(45, "TAB", true);
        d0 = keyCommand46;
        KeyCommand keyCommand47 = new KeyCommand(46, "UNDO", true);
        e0 = keyCommand47;
        KeyCommand keyCommand48 = new KeyCommand(47, "REDO", true);
        f0 = keyCommand48;
        KeyCommand[] keyCommandArr = {keyCommand, keyCommand2, keyCommand3, keyCommand4, keyCommand5, keyCommand6, keyCommand7, keyCommand8, keyCommand9, keyCommand10, keyCommand11, keyCommand12, keyCommand13, keyCommand14, keyCommand15, keyCommand16, keyCommand17, keyCommand18, keyCommand19, keyCommand20, keyCommand21, keyCommand22, keyCommand23, keyCommand24, keyCommand25, keyCommand26, keyCommand27, keyCommand28, keyCommand29, keyCommand30, keyCommand31, keyCommand32, keyCommand33, keyCommand34, keyCommand35, keyCommand36, keyCommand37, keyCommand38, keyCommand39, keyCommand40, keyCommand41, keyCommand42, keyCommand43, keyCommand44, keyCommand45, keyCommand46, keyCommand47, keyCommand48, new KeyCommand(48, "CHARACTER_PALETTE", true)};
        g0 = keyCommandArr;
        EnumEntriesKt.a(keyCommandArr);
    }

    public KeyCommand(int i, String str, boolean z2) {
        this.j = z2;
    }

    public static KeyCommand valueOf(String str) {
        return (KeyCommand) Enum.valueOf(KeyCommand.class, str);
    }

    public static KeyCommand[] values() {
        return (KeyCommand[]) g0.clone();
    }
}
