package androidx.navigationevent;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.navigationevent.NavigationEventTransitionState;
import defpackage.u2;
import defpackage.v2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OnBackInvokedInput extends NavigationEventInput {
    public final OnBackInvokedDispatcher c;
    public final int d;
    public final OnBackInvokedCallback e;
    public boolean f;

    public OnBackInvokedInput(OnBackInvokedDispatcher onBackInvokedDispatcher, int i) {
        OnBackInvokedCallback onBackInvokedCallback;
        this.c = onBackInvokedDispatcher;
        this.d = i;
        if (Build.VERSION.SDK_INT == 33) {
            onBackInvokedCallback = new v2(1, this);
        } else {
            onBackInvokedCallback = new OnBackAnimationCallback() { // from class: androidx.navigationevent.OnBackInvokedInput$createOnBackAnimationCallback$1
                public final void onBackCancelled() {
                    OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                    NavigationEventDispatcher navigationEventDispatcher = onBackInvokedInput.a;
                    if (navigationEventDispatcher != null) {
                        if (!onBackInvokedInput.b) {
                            navigationEventDispatcher.d(onBackInvokedInput, null);
                        }
                        NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.b;
                        navigationEventProcessor.getClass();
                        if (onBackInvokedInput.equals(navigationEventProcessor.h) && -1 == navigationEventProcessor.g) {
                            NavigationEventHandler navigationEventHandler = navigationEventProcessor.f;
                            if (navigationEventHandler == null) {
                                navigationEventHandler = navigationEventProcessor.c(-1);
                            }
                            navigationEventProcessor.f = null;
                            navigationEventProcessor.g = 0;
                            navigationEventProcessor.h = null;
                            if (navigationEventHandler != null) {
                                navigationEventHandler.a();
                            }
                            navigationEventProcessor.a.setValue(NavigationEventTransitionState.Idle.a);
                        }
                        onBackInvokedInput.b = false;
                        return;
                    }
                    u2.l("This input is not added to any dispatcher.");
                }

                public final void onBackInvoked() {
                    OnBackInvokedInput.this.a();
                }

                public final void onBackProgressed(BackEvent backEvent) {
                    backEvent.getClass();
                    NavigationEvent a = NavigationEventKt.a(backEvent);
                    OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                    NavigationEventDispatcher navigationEventDispatcher = onBackInvokedInput.a;
                    if (navigationEventDispatcher != null) {
                        if (onBackInvokedInput.b) {
                            NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.b;
                            navigationEventProcessor.getClass();
                            if (onBackInvokedInput.equals(navigationEventProcessor.h) && -1 == navigationEventProcessor.g) {
                                NavigationEventHandler navigationEventHandler = navigationEventProcessor.f;
                                if (navigationEventHandler == null) {
                                    navigationEventHandler = navigationEventProcessor.c(-1);
                                }
                                if (navigationEventHandler != null) {
                                    new NavigationEventTransitionState.InProgress(a, -1);
                                    navigationEventHandler.c(a);
                                }
                                navigationEventProcessor.a.setValue(new NavigationEventTransitionState.InProgress(a, -1));
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    u2.l("This input is not added to any dispatcher.");
                }

                public final void onBackStarted(BackEvent backEvent) {
                    backEvent.getClass();
                    NavigationEvent a = NavigationEventKt.a(backEvent);
                    OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                    NavigationEventDispatcher navigationEventDispatcher = onBackInvokedInput.a;
                    if (navigationEventDispatcher != null) {
                        if (!onBackInvokedInput.b) {
                            navigationEventDispatcher.d(onBackInvokedInput, a);
                            onBackInvokedInput.b = true;
                            return;
                        }
                        return;
                    }
                    u2.l("This input is not added to any dispatcher.");
                }
            };
        }
        this.e = onBackInvokedCallback;
    }

    @Override // androidx.navigationevent.NavigationEventInput
    public final void b(boolean z) {
        OnBackInvokedCallback onBackInvokedCallback = this.e;
        if (z && !this.f) {
            this.c.registerOnBackInvokedCallback(this.d, onBackInvokedCallback);
            this.f = true;
        } else if (!z && this.f) {
            this.c.unregisterOnBackInvokedCallback(onBackInvokedCallback);
            this.f = false;
        }
    }
}
