package okhttp3.internal.tls;

import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okio.Utf8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    public static final OkHostnameVerifier a = new Object();

    public static List a(X509Certificate x509Certificate, int i) {
        Collection<List<?>> subjectAlternativeNames;
        Object obj;
        try {
            subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException unused) {
        }
        if (subjectAlternativeNames != null) {
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && Intrinsics.a(list.get(0), Integer.valueOf(i)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        }
        return EmptyList.j;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[LOOP:1: B:22:0x0062->B:52:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b(String str, X509Certificate x509Certificate) {
        boolean z;
        String str2;
        int length;
        str.getClass();
        if (Util.e.d(str)) {
            String b = HostnamesKt.b(str);
            List a2 = a(x509Certificate, 7);
            if (!a2.isEmpty()) {
                Iterator it = a2.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.a(b, HostnamesKt.b((String) it.next()))) {
                        return true;
                    }
                }
            }
            return false;
        }
        if (str.length() == ((int) Utf8.a(str))) {
            Locale locale = Locale.US;
            locale.getClass();
            str = str.toLowerCase(locale);
            str.getClass();
        }
        List<String> a3 = a(x509Certificate, 2);
        if (!a3.isEmpty()) {
            for (String str3 : a3) {
                if (str.length() != 0 && !StringsKt.J(str, ".", false) && !StringsKt.l(str, "..", false) && str3 != null && str3.length() != 0 && !StringsKt.J(str3, ".", false) && !StringsKt.l(str3, "..", false)) {
                    if (!StringsKt.l(str, ".", false)) {
                        str2 = str.concat(".");
                    } else {
                        str2 = str;
                    }
                    if (!StringsKt.l(str3, ".", false)) {
                        str3 = str3.concat(".");
                    }
                    if (str3.length() == ((int) Utf8.a(str3))) {
                        Locale locale2 = Locale.US;
                        locale2.getClass();
                        str3 = str3.toLowerCase(locale2);
                        str3.getClass();
                    }
                    if (!StringsKt.i(str3, "*", false)) {
                        z = str2.equals(str3);
                    } else if (StringsKt.J(str3, "*.", false) && StringsKt.q(str3, '*', 1, 4) == -1 && str2.length() >= str3.length() && !"*.".equals(str3)) {
                        String substring = str3.substring(1);
                        if (StringsKt.l(str2, substring, false) && ((length = str2.length() - substring.length()) <= 0 || StringsKt.v(str2, '.', length - 1, 4) == -1)) {
                            z = true;
                        }
                    }
                    if (!z) {
                        return true;
                    }
                }
                z = false;
                if (!z) {
                }
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        str.getClass();
        sSLSession.getClass();
        if (str.length() == ((int) Utf8.a(str))) {
            try {
                Certificate certificate = sSLSession.getPeerCertificates()[0];
                certificate.getClass();
                return b(str, (X509Certificate) certificate);
            } catch (SSLException unused) {
            }
        }
        return false;
    }
}
