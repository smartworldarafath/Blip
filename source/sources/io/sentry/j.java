package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.SentryEnvelopeItem;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ j(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Charset charset = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case 1:
                Charset charset2 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Charset charset3 = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Charset charset4 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Charset charset5 = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Charset charset6 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Charset charset7 = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Charset charset8 = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Charset charset9 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            case KeyModifiers.a /* 9 */:
                Charset charset10 = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case KeyModifiers.b /* 10 */:
                Charset charset11 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            case 11:
                Charset charset12 = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case KeyModifiers.c /* 12 */:
                Charset charset13 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            case 13:
                Charset charset14 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            case 14:
                Charset charset15 = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case 15:
                Charset charset16 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            case 16:
                Charset charset17 = SentryEnvelopeItem.d;
                return Integer.valueOf(((SentryEnvelopeItem.CachedItem) obj).a().length);
            case 17:
                Charset charset18 = SentryEnvelopeItem.d;
                return ((SentryEnvelopeItem.CachedItem) obj).a();
            default:
                HostnameCache hostnameCache = (HostnameCache) obj;
                HostnameCache hostnameCache2 = HostnameCache.g;
                try {
                    hostnameCache.e.getClass();
                    hostnameCache.b = InetAddress.getLocalHost().getCanonicalHostName();
                    hostnameCache.c = System.currentTimeMillis() + hostnameCache.a;
                    hostnameCache.d.set(false);
                    return null;
                } catch (Throwable th) {
                    hostnameCache.d.set(false);
                    throw th;
                }
        }
    }
}
