package androidx.compose.ui.platform;

import android.view.View;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidSoundEffect implements SoundEffect {
    public final View a;

    public AndroidSoundEffect(View view) {
        this.a = view;
    }

    @Override // androidx.compose.ui.platform.SoundEffect
    public final void a() {
        this.a.playSoundEffect(0);
    }
}
