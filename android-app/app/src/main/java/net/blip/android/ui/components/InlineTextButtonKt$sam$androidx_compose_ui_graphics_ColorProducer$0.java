package net.blip.android.ui.components;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionAdapter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0 implements ColorProducer, FunctionAdapter {
    public final /* synthetic */ Function0 a;

    public InlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0(Function0 function0) {
        this.a = function0;
    }

    @Override // androidx.compose.ui.graphics.ColorProducer
    public final /* synthetic */ long a() {
        return ((Color) this.a.a()).a;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof ColorProducer) && (obj instanceof FunctionAdapter)) {
            return this.a.equals(((FunctionAdapter) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
