package androidx.compose.ui.platform;

import android.view.View;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidComposeViewTranslationCallbackS {
    public static final AndroidComposeViewTranslationCallbackS a = new Object();

    public final void a(View view) {
        view.clearViewTranslationCallback();
    }

    public final void b(View view) {
        AndroidComposeViewTranslationCallback androidComposeViewTranslationCallback = AndroidComposeViewTranslationCallback.a;
        AndroidComposeViewTranslationCallback androidComposeViewTranslationCallback2 = AndroidComposeViewTranslationCallback.a;
        view.setViewTranslationCallback(androidComposeViewTranslationCallback);
    }
}
