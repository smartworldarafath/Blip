package defpackage;

import android.graphics.Path;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w9 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ int m;

    public /* synthetic */ w9(int i, Placeable placeable, int i2) {
        this.j = 1;
        this.k = i;
        this.l = placeable;
        this.m = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        int i3 = this.k;
        Object obj2 = this.l;
        switch (i) {
            case 0:
                ((Placeable.PlacementScope) obj).e((Placeable) obj2, i3, i2, 0.0f);
                return unit;
            case 1:
                ((Placeable.PlacementScope) obj).e((Placeable) obj2, MathKt.b((i3 - r8.j) / 2.0f), MathKt.b((i2 - r8.k) / 2.0f), 0.0f);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Placeable.PlacementScope) obj).e((Placeable) obj2, i3, i2, 0.0f);
                return unit;
            default:
                AndroidPath androidPath = (AndroidPath) obj2;
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                AndroidParagraph androidParagraph = paragraphInfo.a;
                int d = paragraphInfo.d(i3);
                int d2 = paragraphInfo.d(i2);
                CharSequence charSequence = androidParagraph.e;
                if (d < 0 || d > d2 || d2 > charSequence.length()) {
                    int length = charSequence.length();
                    StringBuilder k = jb.k("start(", d, ") or end(", d2, ") is out of range [0..");
                    k.append(length);
                    k.append("], or start > end!");
                    InlineClassHelperKt.a(k.toString());
                }
                Path path = new Path();
                TextLayout textLayout = androidParagraph.d;
                textLayout.f.getSelectionPath(d, d2, path);
                int i4 = textLayout.h;
                if (i4 != 0 && !path.isEmpty()) {
                    path.offset(0.0f, i4);
                }
                AndroidPath androidPath2 = new AndroidPath(path);
                float f = paragraphInfo.f;
                androidPath2.j((Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(f) & 4294967295L));
                androidx.compose.ui.graphics.Path.b(androidPath, androidPath2);
                return unit;
        }
    }

    public /* synthetic */ w9(Object obj, int i, int i2, int i3) {
        this.j = i3;
        this.l = obj;
        this.k = i;
        this.m = i2;
    }
}
