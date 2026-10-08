package androidx.compose.material;

import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TextFieldImplKt$CommonDecorationBox$labelColor$1 implements Function3<InputPhase, Composer, Integer, Color> {
    public final /* synthetic */ TextFieldColors j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ InteractionSource l;

    public TextFieldImplKt$CommonDecorationBox$labelColor$1(InteractionSource interactionSource, TextFieldColors textFieldColors, boolean z) {
        this.j = textFieldColors;
        this.k = z;
        this.l = interactionSource;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        long j;
        ((Number) obj3).intValue();
        GapComposer gapComposer = (GapComposer) ((Composer) obj2);
        gapComposer.W(1423138213);
        InputPhase inputPhase = InputPhase.j;
        DefaultTextFieldColors defaultTextFieldColors = (DefaultTextFieldColors) this.j;
        gapComposer.W(727091888);
        MutableState a = FocusInteractionKt.a(this.l, gapComposer, 0);
        if (!this.k) {
            j = defaultTextFieldColors.r;
        } else if (((Boolean) a.getValue()).booleanValue()) {
            j = defaultTextFieldColors.p;
        } else {
            j = defaultTextFieldColors.q;
        }
        MutableState k = SnapshotStateKt.k(new Color(j), gapComposer);
        gapComposer.p(false);
        long j2 = ((Color) k.getValue()).a;
        gapComposer.p(false);
        return new Color(j2);
    }
}
