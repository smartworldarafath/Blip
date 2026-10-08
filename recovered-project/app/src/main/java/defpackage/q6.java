package defpackage;

import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q6 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;

    public /* synthetic */ q6(Function1 function1, boolean z) {
        this.j = 2;
        this.l = function1;
        this.k = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        MutableSharedFlow j;
        int i = this.j;
        Unit unit = Unit.a;
        boolean z = this.k;
        Object obj = this.l;
        switch (i) {
            case 0:
                Function0 function0 = (Function0) obj;
                ContextMenuColors contextMenuColors = ContextMenuUiKt.a;
                if (z) {
                    function0.a();
                }
                return unit;
            case 1:
                LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) obj;
                if (z && (j = ((AndroidLegacyPlatformTextInputServiceAdapter) legacyPlatformTextInputServiceAdapter).j()) != null) {
                    ((SharedFlowImpl) j).h(unit);
                }
                return unit;
            default:
                ((Function1) obj).b(Boolean.valueOf(!z));
                return unit;
        }
    }

    public /* synthetic */ q6(int i, Object obj, boolean z) {
        this.j = i;
        this.k = z;
        this.l = obj;
    }
}
