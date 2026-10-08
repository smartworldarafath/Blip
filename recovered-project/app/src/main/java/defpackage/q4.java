package defpackage;

import android.graphics.Shader;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.ShaderKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.util.BottomInnerShadowKt$bottomInnerShadow$1$customBrush$1$1;
import net.blip.shared.ColorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q4 implements Function3 {
    public final /* synthetic */ long j;

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        Modifier modifier = (Modifier) obj;
        ((Integer) obj3).getClass();
        modifier.getClass();
        GapComposer gapComposer = (GapComposer) ((Composer) obj2);
        gapComposer.W(-921139486);
        final float i0 = ((Density) gapComposer.j(CompositionLocalsKt.h)).i0(30.0f);
        Object K = gapComposer.K();
        if (K == Composer.Companion.a) {
            final long j = this.j;
            K = new ShaderBrush() { // from class: net.blip.android.ui.util.BottomInnerShadowKt$bottomInnerShadow$1$customBrush$1$1
                @Override // androidx.compose.ui.graphics.ShaderBrush
                public final Shader b(long j2) {
                    long j3 = j;
                    List C = CollectionsKt.C(new Color(ColorKt.a(j3, 0.0f)), new Color(ColorKt.a(j3, 0.5f)), new Color(j3));
                    List C2 = CollectionsKt.C(Float.valueOf(0.0f), Float.valueOf(0.6f), Float.valueOf(1.0f));
                    int i = (int) (j2 & 4294967295L);
                    float intBitsToFloat = Float.intBitsToFloat(i) - i0;
                    long floatToRawIntBits = (Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L);
                    float intBitsToFloat2 = Float.intBitsToFloat(i);
                    return ShaderKt.a(floatToRawIntBits, (Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L), C, C2);
                }
            };
            gapComposer.g0(K);
        }
        Modifier a = BackgroundKt.a(modifier, (BottomInnerShadowKt$bottomInnerShadow$1$customBrush$1$1) K);
        gapComposer.p(false);
        return a;
    }
}
