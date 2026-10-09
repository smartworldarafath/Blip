package defpackage;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w6 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ TextFieldSelectionManager k;

    public /* synthetic */ w6(TextFieldSelectionManager textFieldSelectionManager, int i) {
        this.j = i;
        this.k = textFieldSelectionManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Rect rect;
        LegacyTextFieldState legacyTextFieldState;
        LayoutCoordinates c;
        long j;
        char c2;
        long j2;
        float f;
        LayoutCoordinates c3;
        float f2;
        LayoutCoordinates c4;
        float f3;
        LayoutCoordinates c5;
        LayoutCoordinates c6;
        int i = this.j;
        final TextFieldSelectionManager textFieldSelectionManager = this.k;
        switch (i) {
            case 0:
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$17$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        TextFieldSelectionManager.this.p();
                    }
                };
            case 1:
                textFieldSelectionManager.s();
                return Unit.a;
            default:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                Rect rect2 = Rect.e;
                if (legacyTextFieldState2 != null) {
                    if (legacyTextFieldState2.p) {
                        legacyTextFieldState2 = null;
                    }
                    if (legacyTextFieldState2 != null) {
                        OffsetMapping offsetMapping = textFieldSelectionManager.b;
                        long j3 = textFieldSelectionManager.o().b;
                        int i2 = TextRange.c;
                        int b = offsetMapping.b((int) (j3 >> 32));
                        int b2 = textFieldSelectionManager.b.b((int) (textFieldSelectionManager.o().b & 4294967295L));
                        LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.d;
                        long j4 = 0;
                        if (legacyTextFieldState3 != null && (c6 = legacyTextFieldState3.c()) != null) {
                            j = c6.S(textFieldSelectionManager.m(true));
                        } else {
                            j = 0;
                        }
                        LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.d;
                        if (legacyTextFieldState4 != null && (c5 = legacyTextFieldState4.c()) != null) {
                            j4 = c5.S(textFieldSelectionManager.m(false));
                        }
                        LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.d;
                        float f4 = 0.0f;
                        if (legacyTextFieldState5 != null && (c4 = legacyTextFieldState5.c()) != null) {
                            TextLayoutResultProxy d = legacyTextFieldState2.d();
                            if (d != null) {
                                f3 = d.a.c(b).b;
                            } else {
                                f3 = 0.0f;
                            }
                            c2 = ' ';
                            j2 = j4;
                            f = Float.intBitsToFloat((int) (c4.S((Float.floatToRawIntBits(f3) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32)) & 4294967295L));
                        } else {
                            c2 = ' ';
                            j2 = j4;
                            f = 0.0f;
                        }
                        LegacyTextFieldState legacyTextFieldState6 = textFieldSelectionManager.d;
                        if (legacyTextFieldState6 != null && (c3 = legacyTextFieldState6.c()) != null) {
                            TextLayoutResultProxy d2 = legacyTextFieldState2.d();
                            if (d2 != null) {
                                f2 = d2.a.c(b2).b;
                            } else {
                                f2 = 0.0f;
                            }
                            f4 = Float.intBitsToFloat((int) (c3.S((Float.floatToRawIntBits(0.0f) << c2) | (Float.floatToRawIntBits(f2) & 4294967295L)) & 4294967295L));
                        }
                        int i3 = (int) (j >> c2);
                        int i4 = (int) (j2 >> c2);
                        rect = new Rect(Math.min(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4)), Math.min(f, f4), Math.max(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4)), (legacyTextFieldState2.a.g.getDensity() * 25.0f) + Math.max(Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 & 4294967295L))));
                        legacyTextFieldState = textFieldSelectionManager.d;
                        if (legacyTextFieldState == null && (c = legacyTextFieldState.c()) != null) {
                            if (c.o() && layoutCoordinates.o()) {
                                return RectKt.a(layoutCoordinates.R(LayoutCoordinatesKt.c(c).u(rect.d())), rect.c());
                            }
                            return rect2;
                        }
                        return null;
                    }
                }
                rect = rect2;
                legacyTextFieldState = textFieldSelectionManager.d;
                if (legacyTextFieldState == null) {
                }
                return null;
        }
    }
}
