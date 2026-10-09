package androidx.compose.ui.layout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface WindowInsetsRulers {
    public static final Companion a = Companion.a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final /* synthetic */ Companion a = new Object();
        public static final WindowInsetsRulers b;
        public static final WindowInsetsRulers c;
        public static final WindowInsetsRulers d;
        public static final WindowInsetsRulers e;
        public static final WindowInsetsRulers f;
        public static final WindowInsetsRulers g;
        public static final WindowInsetsRulers h;
        public static final WindowInsetsRulers i;
        public static final WindowInsetsRulers j;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.layout.WindowInsetsRulers$Companion, java.lang.Object] */
        static {
            WindowInsetsRulersImpl windowInsetsRulersImpl = new WindowInsetsRulersImpl("caption bar");
            b = windowInsetsRulersImpl;
            WindowInsetsRulersImpl windowInsetsRulersImpl2 = new WindowInsetsRulersImpl("display cutout");
            c = windowInsetsRulersImpl2;
            WindowInsetsRulersImpl windowInsetsRulersImpl3 = new WindowInsetsRulersImpl("ime");
            d = windowInsetsRulersImpl3;
            WindowInsetsRulersImpl windowInsetsRulersImpl4 = new WindowInsetsRulersImpl("mandatory system gestures");
            e = windowInsetsRulersImpl4;
            WindowInsetsRulersImpl windowInsetsRulersImpl5 = new WindowInsetsRulersImpl("navigation bars");
            f = windowInsetsRulersImpl5;
            WindowInsetsRulersImpl windowInsetsRulersImpl6 = new WindowInsetsRulersImpl("status bars");
            g = windowInsetsRulersImpl6;
            new InnermostInsetsRulers("system bars", new WindowInsetsRulers[]{windowInsetsRulersImpl6, windowInsetsRulersImpl5, windowInsetsRulersImpl});
            WindowInsetsRulersImpl windowInsetsRulersImpl7 = new WindowInsetsRulersImpl("system gestures");
            h = windowInsetsRulersImpl7;
            WindowInsetsRulersImpl windowInsetsRulersImpl8 = new WindowInsetsRulersImpl("tappable element");
            i = windowInsetsRulersImpl8;
            WindowInsetsRulersImpl windowInsetsRulersImpl9 = new WindowInsetsRulersImpl("waterfall");
            j = windowInsetsRulersImpl9;
            new InnermostInsetsRulers("safe drawing", new WindowInsetsRulers[]{windowInsetsRulersImpl6, windowInsetsRulersImpl5, windowInsetsRulersImpl, windowInsetsRulersImpl2, windowInsetsRulersImpl3, windowInsetsRulersImpl8});
            new InnermostInsetsRulers("safe gestures", new WindowInsetsRulers[]{windowInsetsRulersImpl4, windowInsetsRulersImpl7, windowInsetsRulersImpl8, windowInsetsRulersImpl9});
            new InnermostInsetsRulers("safe content", new WindowInsetsRulers[]{windowInsetsRulersImpl6, windowInsetsRulersImpl5, windowInsetsRulersImpl, windowInsetsRulersImpl3, windowInsetsRulersImpl7, windowInsetsRulersImpl4, windowInsetsRulersImpl8, windowInsetsRulersImpl2, windowInsetsRulersImpl9});
        }
    }

    RectRulers a();

    RectRulers b();
}
