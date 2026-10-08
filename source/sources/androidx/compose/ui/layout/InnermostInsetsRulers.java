package androidx.compose.ui.layout;

import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class InnermostInsetsRulers implements WindowInsetsRulers {
    public final String b;
    public final WindowInsetsRulers[] c;
    public final RectRulers d;
    public final RectRulers e;

    public InnermostInsetsRulers(String str, WindowInsetsRulers[] windowInsetsRulersArr) {
        this.b = str;
        this.c = windowInsetsRulersArr;
        ArrayList arrayList = new ArrayList(windowInsetsRulersArr.length);
        for (WindowInsetsRulers windowInsetsRulers : windowInsetsRulersArr) {
            arrayList.add(windowInsetsRulers.a());
        }
        RectRulers[] rectRulersArr = (RectRulers[]) arrayList.toArray(new RectRulers[0]);
        this.d = new InnerRectRulers((RectRulers[]) Arrays.copyOf(rectRulersArr, rectRulersArr.length));
        WindowInsetsRulers[] windowInsetsRulersArr2 = this.c;
        ArrayList arrayList2 = new ArrayList(windowInsetsRulersArr2.length);
        for (WindowInsetsRulers windowInsetsRulers2 : windowInsetsRulersArr2) {
            arrayList2.add(windowInsetsRulers2.b());
        }
        RectRulers[] rectRulersArr2 = (RectRulers[]) arrayList2.toArray(new RectRulers[0]);
        this.e = new InnerRectRulers((RectRulers[]) Arrays.copyOf(rectRulersArr2, rectRulersArr2.length));
    }

    @Override // androidx.compose.ui.layout.WindowInsetsRulers
    public final RectRulers a() {
        return this.d;
    }

    @Override // androidx.compose.ui.layout.WindowInsetsRulers
    public final RectRulers b() {
        return this.e;
    }

    public final String toString() {
        return this.b;
    }
}
