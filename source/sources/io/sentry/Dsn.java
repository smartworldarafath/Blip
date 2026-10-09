package io.sentry;

import io.sentry.util.Objects;
import java.net.URI;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Dsn {
    public static final Pattern e = Pattern.compile("^o(\\d+)\\.");
    public final String a;
    public final String b;
    public final URI c;
    public final String d;

    public Dsn(String str) {
        String str2;
        try {
            Objects.b(str, "The DSN is required.");
            String trim = str.trim();
            if (!trim.isEmpty()) {
                URI normalize = new URI(trim).normalize();
                String scheme = normalize.getScheme();
                if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                    throw new IllegalArgumentException("Invalid DSN scheme: " + scheme);
                }
                String userInfo = normalize.getUserInfo();
                if (userInfo != null && !userInfo.isEmpty()) {
                    String[] split = userInfo.split(":", -1);
                    String str3 = split[0];
                    this.b = str3;
                    if (str3 != null && !str3.isEmpty()) {
                        String str4 = null;
                        if (split.length > 1) {
                            str2 = split[1];
                        } else {
                            str2 = null;
                        }
                        this.a = str2;
                        String path = normalize.getPath();
                        path = path.endsWith("/") ? path.substring(0, path.length() - 1) : path;
                        int lastIndexOf = path.lastIndexOf("/") + 1;
                        String substring = path.substring(0, lastIndexOf);
                        substring = substring.endsWith("/") ? substring : substring.concat("/");
                        String substring2 = path.substring(lastIndexOf);
                        if (!substring2.isEmpty()) {
                            this.c = new URI(scheme, null, normalize.getHost(), normalize.getPort(), substring + "api/" + substring2, null, null);
                            String host = normalize.getHost();
                            if (host != null) {
                                Matcher matcher = e.matcher(host);
                                if (matcher.find()) {
                                    str4 = matcher.group(1);
                                }
                            }
                            this.d = str4;
                            return;
                        }
                        throw new IllegalArgumentException("Invalid DSN: A Project Id is required.");
                    }
                    throw new IllegalArgumentException("Invalid DSN: No public key provided.");
                }
                throw new IllegalArgumentException("Invalid DSN: No public key provided.");
            }
            throw new IllegalArgumentException("The DSN is empty.");
        } catch (Throwable th) {
            throw new IllegalArgumentException(th);
        }
    }
}
