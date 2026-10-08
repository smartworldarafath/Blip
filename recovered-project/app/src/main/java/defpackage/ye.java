package defpackage;

import androidx.compose.ui.focus.FocusRequester;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ye implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ FocusRequester k;

    public /* synthetic */ ye(FocusRequester focusRequester, int i) {
        this.j = i;
        this.k = focusRequester;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        FocusRequester focusRequester = this.k;
        switch (i) {
            case 0:
                FocusRequester.a(focusRequester);
                return unit;
            default:
                FocusRequester.a(focusRequester);
                return unit;
        }
    }
}
