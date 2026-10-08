package androidx.compose.ui.focus;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0 implements FocusPropertiesScope, FunctionAdapter {
    public final /* synthetic */ Function1 a;

    public FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0(Function1 function1) {
        this.a = function1;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof FocusPropertiesScope) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.a(this.a, ((FunctionAdapter) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
