package coil3.request;

import android.view.View;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewTargetRequestManagerKt {
    public static final ViewTargetRequestManager a(View view) {
        ViewTargetRequestManager viewTargetRequestManager;
        Object tag = view.getTag(R.id.coil3_request_manager);
        ViewTargetRequestManager viewTargetRequestManager2 = null;
        if (tag instanceof ViewTargetRequestManager) {
            viewTargetRequestManager = (ViewTargetRequestManager) tag;
        } else {
            viewTargetRequestManager = null;
        }
        if (viewTargetRequestManager == null) {
            synchronized (view) {
                try {
                    Object tag2 = view.getTag(R.id.coil3_request_manager);
                    if (tag2 instanceof ViewTargetRequestManager) {
                        viewTargetRequestManager2 = (ViewTargetRequestManager) tag2;
                    }
                    if (viewTargetRequestManager2 == null) {
                        viewTargetRequestManager2 = new ViewTargetRequestManager(view);
                        view.addOnAttachStateChangeListener(viewTargetRequestManager2);
                        view.setTag(R.id.coil3_request_manager, viewTargetRequestManager2);
                    }
                } finally {
                }
            }
            return viewTargetRequestManager2;
        }
        return viewTargetRequestManager;
    }
}
