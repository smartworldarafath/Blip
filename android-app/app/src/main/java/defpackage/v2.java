package defpackage;

import android.window.OnBackInvokedCallback;
import androidx.appcompat.widget.a;
import androidx.navigationevent.OnBackInvokedInput;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class v2 implements OnBackInvokedCallback {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ v2(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final void onBackInvoked() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Function0 function0 = (Function0) obj;
                if (function0 != null) {
                    function0.a();
                    return;
                }
                return;
            case 1:
                ((OnBackInvokedInput) obj).a();
                return;
            default:
                ((a) obj).run();
                return;
        }
    }
}
