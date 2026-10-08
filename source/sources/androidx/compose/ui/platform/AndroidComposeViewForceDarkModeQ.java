package androidx.compose.ui.platform;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidComposeViewForceDarkModeQ {
    public static final AndroidComposeViewForceDarkModeQ a = new Object();

    public final void a(View view) {
        view.setForceDarkAllowed(false);
    }
}
