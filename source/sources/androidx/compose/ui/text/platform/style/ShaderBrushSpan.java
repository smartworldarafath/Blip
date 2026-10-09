package androidx.compose.ui.text.platform.style;

import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.text.platform.AndroidTextPaint_androidKt;
import defpackage.kb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ShaderBrushSpan extends CharacterStyle implements UpdateAppearance {
    public static final /* synthetic */ int n = 0;
    public final ShaderBrush j;
    public final float k;
    public final MutableState l = SnapshotStateKt.g(new Size(9205357640488583168L));
    public final State m = SnapshotStateKt.e(new kb(16, this));

    public ShaderBrushSpan(ShaderBrush shaderBrush, float f) {
        this.j = shaderBrush;
        this.k = f;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        AndroidTextPaint_androidKt.a(textPaint, this.k);
        textPaint.setShader((Shader) this.m.getValue());
    }
}
