package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import androidx.savedstate.SavedStateRegistry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LegacySavedStateHandleController {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OnRecreation implements SavedStateRegistry.AutoRecreated {
    }

    public static final void a(ViewModel viewModel, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        AutoCloseable autoCloseable;
        savedStateRegistry.getClass();
        lifecycle.getClass();
        ViewModelImpl viewModelImpl = viewModel.a;
        if (viewModelImpl != null) {
            synchronized (viewModelImpl.a) {
                autoCloseable = (AutoCloseable) viewModelImpl.b.get("androidx.lifecycle.savedstate.vm.tag");
            }
        } else {
            autoCloseable = null;
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) autoCloseable;
        if (savedStateHandleController != null && !savedStateHandleController.l) {
            savedStateHandleController.a(lifecycle, savedStateRegistry);
            b(lifecycle, savedStateRegistry);
        }
    }

    public static void b(final Lifecycle lifecycle, final SavedStateRegistry savedStateRegistry) {
        Lifecycle.State state = ((LifecycleRegistry) lifecycle).i;
        if (state != Lifecycle.State.k && state.compareTo(Lifecycle.State.m) < 0) {
            lifecycle.a(new LifecycleEventObserver() { // from class: androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        Lifecycle.this.b(this);
                        savedStateRegistry.d();
                    }
                }
            });
        } else {
            savedStateRegistry.d();
        }
    }
}
