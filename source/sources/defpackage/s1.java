package defpackage;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupLayout;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s1 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ PopupLayout k;

    public /* synthetic */ s1(PopupLayout popupLayout, int i) {
        this.j = i;
        this.k = popupLayout;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Looper looper;
        int i = this.j;
        Unit unit = Unit.a;
        PopupLayout popupLayout = this.k;
        switch (i) {
            case 0:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.a;
                popupLayout.m7setPopupContentSizefhxjrPA((IntSize) obj);
                popupLayout.r();
                return unit;
            case 1:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidPopup_androidKt.a;
                LayoutCoordinates L = ((LayoutCoordinates) obj).L();
                L.getClass();
                popupLayout.q(L);
                return unit;
            default:
                Function0 function0 = (Function0) obj;
                wc wcVar = PopupLayout.N;
                Handler handler = popupLayout.getHandler();
                if (handler != null) {
                    looper = handler.getLooper();
                } else {
                    looper = null;
                }
                if (looper == Looper.myLooper()) {
                    function0.a();
                } else {
                    Handler handler2 = popupLayout.getHandler();
                    if (handler2 != null) {
                        handler2.post(new q0(5, function0));
                    }
                }
                return unit;
        }
    }
}
