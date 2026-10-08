package net.blip.android;

import android.content.Context;
import defpackage.r1;
import kotlin.text.StringsKt;
import net.blip.libblip.Flavor;
import net.blip.libblip.LogLevel;
import net.blip.libblip.SemanticVersion;
import net.blip.libblip.SentryConfig;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlavorAndroid implements Flavor {
    public final String a;
    public final SemanticVersion b;
    public final String c;
    public final String d;
    public final String e;
    public final SentryConfig f;

    public FlavorAndroid(Context context) {
        this.a = context.getApplicationInfo().nonLocalizedLabel.toString();
        SemanticVersion semanticVersion = new SemanticVersion();
        this.b = semanticVersion;
        String string = context.getString(R.string.serverAddr);
        string.getClass();
        this.c = string;
        LogLevel logLevel = LogLevel.k;
        String absolutePath = context.getFilesDir().getAbsolutePath();
        absolutePath.getClass();
        this.d = absolutePath;
        String absolutePath2 = context.getCacheDir().getAbsolutePath();
        absolutePath2.getClass();
        this.e = absolutePath2;
        String string2 = context.getString(R.string.sentryDsn);
        string2.getClass();
        SentryConfig sentryConfig = null;
        string2 = StringsKt.t(string2) ? null : string2;
        if (string2 != null) {
            String string3 = context.getString(R.string.sentryEnvironment);
            string3.getClass();
            string3 = StringsKt.t(string3) ? null : string3;
            if (string3 != null) {
                sentryConfig = new SentryConfig(string2, string3, "net.blip.android@".concat(semanticVersion.a()), new r1(17, this));
            }
        }
        this.f = sentryConfig;
    }
}
