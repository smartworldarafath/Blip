package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FontSynthesis_androidKt {
    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(int i, Object obj, Font font, FontWeight fontWeight, int i2) {
        boolean z;
        boolean z2;
        int i3;
        if (!(obj instanceof Typeface)) {
            return obj;
        }
        boolean z3 = false;
        if ((i & 1) != 0 && !Intrinsics.a(((ResourceFont) font).a, fontWeight)) {
            FontWeight fontWeight2 = FontWeight.m;
            if (fontWeight.compareTo(fontWeight2) >= 0 && Intrinsics.b(((ResourceFont) font).a.j, fontWeight2.j) < 0) {
                z = true;
                if ((i & 2) != 0) {
                    ((ResourceFont) font).getClass();
                    if (i2 != 0) {
                        z2 = true;
                        if (z2 && !z) {
                            return obj;
                        }
                        if (z) {
                            i3 = fontWeight.j;
                        } else {
                            i3 = ((ResourceFont) font).a.j;
                        }
                        if (z2) {
                            if (i2 == 1) {
                                z3 = true;
                            }
                        } else {
                            ((ResourceFont) font).getClass();
                        }
                        return Typeface.create((Typeface) obj, i3, z3);
                    }
                }
                z2 = false;
                if (z2) {
                }
                if (z) {
                }
                if (z2) {
                }
                return Typeface.create((Typeface) obj, i3, z3);
            }
        }
        z = false;
        if ((i & 2) != 0) {
        }
        z2 = false;
        if (z2) {
        }
        if (z) {
        }
        if (z2) {
        }
        return Typeface.create((Typeface) obj, i3, z3);
    }
}
