package io.sentry;

import io.sentry.util.Objects;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RequestDetails {
    public final URL a;
    public final HashMap b;

    public RequestDetails(String str, HashMap hashMap) {
        Objects.b(str, "url is required");
        try {
            this.a = URI.create(str).toURL();
            this.b = hashMap;
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Failed to compose the Sentry's server URL.", e);
        }
    }
}
