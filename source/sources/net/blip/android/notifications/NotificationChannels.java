package net.blip.android.notifications;

import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;
import androidx.core.app.NotificationChannelCompat;
import defpackage.jb;
import defpackage.q;
import java.util.Arrays;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import net.blip.android.App;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NotificationChannels {
    public static final Config a;
    public static final Config b;
    public static final Config c;
    public static final Config d;
    public static final Config e;
    public static final Set f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Config {
        public final String a;
        public final String b;
        public final String c;
        public final int d;
        public final long[] e;
        public final Pair f;
        public final NotificationChannelCompat g;

        public Config(String str, String str2, String str3, int i, long[] jArr, Pair pair) {
            boolean z;
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = i;
            this.e = jArr;
            this.f = pair;
            NotificationChannelCompat notificationChannelCompat = new NotificationChannelCompat.Builder(a(), i).a;
            notificationChannelCompat.b = str2;
            notificationChannelCompat.d = str3;
            notificationChannelCompat.c = i;
            if (jArr != null && jArr.length > 0) {
                z = true;
            } else {
                z = false;
            }
            notificationChannelCompat.g = z;
            notificationChannelCompat.h = jArr;
            Uri uri = (Uri) pair.j;
            AudioAttributes audioAttributes = (AudioAttributes) pair.k;
            notificationChannelCompat.e = uri;
            notificationChannelCompat.f = audioAttributes;
            this.g = notificationChannelCompat;
        }

        public final String a() {
            return this.a + "-" + (this.b + "_" + this.c + "_" + this.d + "_" + Arrays.hashCode(this.e) + "_" + this.f).hashCode();
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Config) {
                    Config config = (Config) obj;
                    if (!Intrinsics.a(this.a, config.a) || !Intrinsics.a(this.b, config.b) || !Intrinsics.a(this.c, config.c) || this.d != config.d || !Intrinsics.a(this.e, config.e) || !Intrinsics.a(this.f, config.f)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int hashCode;
            int b = q.b(this.d, jb.c(this.c, jb.c(this.b, this.a.hashCode() * 31, 31), 31), 31);
            int i = 0;
            long[] jArr = this.e;
            if (jArr == null) {
                hashCode = 0;
            } else {
                hashCode = Arrays.hashCode(jArr);
            }
            int i2 = (b + hashCode) * 31;
            Pair pair = this.f;
            if (pair != null) {
                i = pair.hashCode();
            }
            return i2 + i;
        }

        public final String toString() {
            String arrays = Arrays.toString(this.e);
            StringBuilder o = q.o("Config(baseId=", this.a, ", name=", this.b, ", description=");
            o.append(this.c);
            o.append(", importance=");
            o.append(this.d);
            o.append(", vibrationPattern=");
            o.append(arrays);
            o.append(", sound=");
            o.append(this.f);
            o.append(")");
            return o.toString();
        }
    }

    static {
        Pair pair = new Pair(null, null);
        Context context = App.m;
        Config config = new Config("transfer_invites", "Incoming files", "Notifications to accept or decline when someone wants to send you a file", 4, new long[]{0, 300, 175, 75, 75, 75, 300, 300, 175, 75, 75, 75, 300, 175, 2000, 300, 175, 75, 75, 75, 300, 300, 175, 75, 75, 75, 300, 175, 2000}, new Pair(Uri.parse("android.resource://" + App.Companion.a().getPackageName() + "/2131755011"), new AudioAttributes.Builder().setUsage(5).build()));
        a = config;
        Config config2 = new Config("transfer_cancellation", "Cancelled transfers", "Notifications that tell you when a transfer has been cancelled", 3, null, new Pair(Uri.parse("android.resource://" + App.Companion.a().getPackageName() + "/2131755009"), new AudioAttributes.Builder().setUsage(5).build()));
        b = config2;
        Config config3 = new Config("transfer_completion_incoming", "Completed transfers (incoming)", "Notifications that tell you when an incoming transfer has completed", 4, null, new Pair(Uri.parse("android.resource://" + App.Companion.a().getPackageName() + "/2131755008"), new AudioAttributes.Builder().setUsage(5).build()));
        c = config3;
        Config config4 = new Config("transfer_completion_outgoing", "Completed transfers (outgoing)", "Notifications that tell you when an outgoing transfer has completed", 3, null, new Pair(Uri.parse("android.resource://" + App.Companion.a().getPackageName() + "/2131755008"), new AudioAttributes.Builder().setUsage(5).build()));
        d = config4;
        Config config5 = new Config("transfer_worker", "In-progress file transfers", "Notifications that display transfer progress and allow transfers to work in the background", 4, null, pair);
        e = config5;
        f = ArraysKt.x(new Config[]{config, config2, config3, config4, config5});
    }
}
