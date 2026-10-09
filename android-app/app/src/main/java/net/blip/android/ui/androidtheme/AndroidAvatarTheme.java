package net.blip.android.ui.androidtheme;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import net.blip.shared.AvatarTheme;
import net.blip.shared.ColorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidAvatarTheme implements AvatarTheme {
    public final long a;

    public AndroidAvatarTheme(long j) {
        this.a = j;
    }

    public final AvatarTheme.Appearance a(int i, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(-1683475020);
        AvatarTheme.Appearance c = c(gapComposer);
        gapComposer.p(false);
        return c;
    }

    public final AvatarTheme.Appearance b(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(-1483287106);
        long j = this.a;
        long a = ColorKt.a(j, 0.33f);
        long a2 = ColorKt.a(j, 0.75f);
        ColorKt.a(j, 0.3f);
        AvatarTheme.Appearance a3 = AndroidAvatarThemeKt.a(a, a2);
        gapComposer.p(false);
        return a3;
    }

    public final AvatarTheme.Appearance c(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(-1128712886);
        long j = this.a;
        AvatarTheme.Appearance a = AndroidAvatarThemeKt.a(j, ColorKt.a(j, 0.4f));
        gapComposer.p(false);
        return a;
    }
}
