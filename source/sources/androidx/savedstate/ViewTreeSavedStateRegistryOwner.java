package androidx.savedstate;

import android.view.View;
import androidx.core.viewtree.ViewTree;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewTreeSavedStateRegistryOwner {
    public static final SavedStateRegistryOwner a(View view) {
        SavedStateRegistryOwner savedStateRegistryOwner;
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_saved_state_registry_owner);
            if (tag instanceof SavedStateRegistryOwner) {
                savedStateRegistryOwner = (SavedStateRegistryOwner) tag;
            } else {
                savedStateRegistryOwner = null;
            }
            if (savedStateRegistryOwner != null) {
                return savedStateRegistryOwner;
            }
            Object a = ViewTree.a(view);
            if (a instanceof View) {
                view = (View) a;
            } else {
                view = null;
            }
        }
        return null;
    }
}
