package net.blip.android.internetshortcut;

import android.content.Context;
import android.net.Uri;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InternetShortcutKt {
    public static final Object a(Context context, Uri uri, ContinuationImpl continuationImpl) {
        DefaultScheduler defaultScheduler = Dispatchers.a;
        return BuildersKt.e(DefaultIoScheduler.l, new InternetShortcutKt$internetShortcutBrowserUriOrNull$2(uri, context, null), continuationImpl);
    }
}
