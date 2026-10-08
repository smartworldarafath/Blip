package androidx.compose.ui.platform;

import android.content.res.Resources;
import androidx.compose.ui.draganddrop.ComposeDragShadowBuilder;
import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.DensityKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidComposeView$dragAndDropManager$1 extends FunctionReferenceImpl implements Function3<DragAndDropTransferData, Size, Function1<? super DrawScope, ? extends Unit>, Boolean> {
    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        if (obj == null) {
            AndroidComposeView androidComposeView = (AndroidComposeView) this.k;
            Class cls = AndroidComposeView.R0;
            Resources resources = androidComposeView.getContext().getResources();
            return Boolean.valueOf(AndroidComposeViewStartDragAndDropN.a.a(androidComposeView, null, new ComposeDragShadowBuilder(DensityKt.a(resources.getDisplayMetrics().density, resources.getConfiguration().fontScale), ((Size) obj2).a, (Function1) obj3)));
        }
        io.sentry.d.i();
        return null;
    }
}
