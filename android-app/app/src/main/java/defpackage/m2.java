package defpackage;

import android.view.MotionEvent;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class m2 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ViewFactoryHolder k;

    public /* synthetic */ m2(ViewFactoryHolder viewFactoryHolder, int i) {
        this.j = i;
        this.k = viewFactoryHolder;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        AndroidComposeView androidComposeView;
        boolean dispatchTouchEvent;
        int i = this.j;
        Unit unit = Unit.a;
        ViewFactoryHolder viewFactoryHolder = this.k;
        switch (i) {
            case 0:
                viewFactoryHolder.z = (Function1) obj;
                return unit;
            case 1:
                Owner owner = (Owner) obj;
                h hVar = AndroidViewHolder.J;
                if (owner instanceof AndroidComposeView) {
                    androidComposeView = (AndroidComposeView) owner;
                } else {
                    androidComposeView = null;
                }
                if (androidComposeView != null) {
                    androidComposeView.getAndroidViewsHandler$ui().removeViewInLayout(viewFactoryHolder);
                    HashMap<LayoutNode, AndroidViewHolder> layoutNodeToHolder = androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder();
                    TypeIntrinsics.b(layoutNodeToHolder).remove(androidComposeView.getAndroidViewsHandler$ui().getHolderToLayoutNode().remove(viewFactoryHolder));
                    viewFactoryHolder.setImportantForAccessibility(0);
                }
                viewFactoryHolder.removeAllViewsInLayout();
                return unit;
            default:
                MotionEvent motionEvent = (MotionEvent) obj;
                switch (motionEvent.getActionMasked()) {
                    case 0:
                    case 1:
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        dispatchTouchEvent = viewFactoryHolder.dispatchTouchEvent(motionEvent);
                        break;
                    default:
                        dispatchTouchEvent = viewFactoryHolder.dispatchGenericMotionEvent(motionEvent);
                        break;
                }
                return Boolean.valueOf(dispatchTouchEvent);
        }
    }
}
