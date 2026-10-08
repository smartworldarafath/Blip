package androidx.lifecycle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface DefaultLifecycleObserver extends LifecycleObserver {
    default void onCreate(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    default void onDestroy(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    default void onPause(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    default void onResume(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    default void onStart(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    default void onStop(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }
}
