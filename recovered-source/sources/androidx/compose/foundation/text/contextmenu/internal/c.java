package androidx.compose.foundation.text.contextmenu.internal;

import android.graphics.drawable.Drawable;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.window.PopupProperties;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ c(TextContextMenuHelperApi28 textContextMenuHelperApi28, Drawable drawable, int i) {
        this.k = textContextMenuHelperApi28;
        this.l = drawable;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [kotlin.jvm.internal.FunctionReference, kotlin.jvm.functions.Function0] */
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj3 = this.l;
        Object obj4 = this.k;
        switch (i) {
            case 0:
                TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj4;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.a;
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    boolean f = gapComposer.f(textContextMenuDataProvider);
                    Object K = gapComposer.K();
                    if (f || K == Composer.Companion.a) {
                        K = SnapshotStateKt.e(new FunctionReference(0, textContextMenuDataProvider, TextContextMenuDataProvider.class, "data", "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;", 0));
                        gapComposer.g0(K);
                    }
                    DefaultTextContextMenuDropdownProvider_androidKt.a(textContextMenuSession, (TextContextMenuData) ((State) K).getValue(), gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                ((Integer) obj2).getClass();
                ((TextContextMenuHelperApi28) obj4).a((Drawable) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return unit;
        }
    }

    public /* synthetic */ c(TextContextMenuDataProvider textContextMenuDataProvider, TextContextMenuSession textContextMenuSession) {
        this.k = textContextMenuDataProvider;
        this.l = textContextMenuSession;
    }
}
