package net.blip.android.internetshortcut;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import kotlin.Pair;
import kotlinx.coroutines.BuildersKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InternetShortcutActivity extends ComponentActivity {
    public final Logger E = LoggerKt.a.m("InternetShortcutActivity", new Pair[0]);

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Uri data;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && (data = intent.getData()) != null) {
            BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new InternetShortcutActivity$onCreate$1(this, data, null), 3);
            return;
        }
        this.E.getClass();
        Logger.e("activity started without an internet shortcut URI", new Pair[0]);
        finish();
    }
}
