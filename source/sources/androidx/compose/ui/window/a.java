package androidx.compose.ui.window;

import androidx.compose.runtime.DisposableEffectResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ DialogWrapper k;

    public /* synthetic */ a(DialogWrapper dialogWrapper, int i) {
        this.j = i;
        this.k = dialogWrapper;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        final DialogWrapper dialogWrapper = this.k;
        switch (i) {
            case 0:
                dialogWrapper.show();
                return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        DialogWrapper dialogWrapper2 = DialogWrapper.this;
                        dialogWrapper2.dismiss();
                        dialogWrapper2.r.e();
                    }
                };
            default:
                if (dialogWrapper.p.a) {
                    dialogWrapper.o.a();
                }
                return Unit.a;
        }
    }
}
