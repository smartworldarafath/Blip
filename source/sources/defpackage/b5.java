package defpackage;

import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b5 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ TextFieldSelectionManager k;
    public final /* synthetic */ ComposableLambdaImpl l;
    public final /* synthetic */ int m;

    public /* synthetic */ b5(TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.j = i2;
        this.k = textFieldSelectionManager;
        this.l = composableLambdaImpl;
        this.m = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        ComposableLambdaImpl composableLambdaImpl = this.l;
        TextFieldSelectionManager textFieldSelectionManager = this.k;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                CommonContextMenuAreaKt.a(textFieldSelectionManager, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                ContextMenu_androidKt.a(textFieldSelectionManager, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }
}
