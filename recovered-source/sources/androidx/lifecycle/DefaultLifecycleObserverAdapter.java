package androidx.lifecycle;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import defpackage.k8;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements LifecycleEventObserver {
    public final DefaultLifecycleObserver j;
    public final LifecycleEventObserver k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            a = iArr;
        }
    }

    public DefaultLifecycleObserverAdapter(DefaultLifecycleObserver defaultLifecycleObserver, LifecycleEventObserver lifecycleEventObserver) {
        defaultLifecycleObserver.getClass();
        this.j = defaultLifecycleObserver;
        this.k = lifecycleEventObserver;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = WhenMappings.a[event.ordinal()];
        DefaultLifecycleObserver defaultLifecycleObserver = this.j;
        switch (i) {
            case 1:
                defaultLifecycleObserver.onCreate(lifecycleOwner);
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                defaultLifecycleObserver.onStart(lifecycleOwner);
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                defaultLifecycleObserver.onResume(lifecycleOwner);
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                defaultLifecycleObserver.onPause(lifecycleOwner);
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                defaultLifecycleObserver.onStop(lifecycleOwner);
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                defaultLifecycleObserver.onDestroy(lifecycleOwner);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                u2.g("ON_ANY must not been send by anybody");
                return;
            default:
                k8.e();
                return;
        }
        LifecycleEventObserver lifecycleEventObserver = this.k;
        if (lifecycleEventObserver != null) {
            lifecycleEventObserver.h(lifecycleOwner, event);
        }
    }
}
