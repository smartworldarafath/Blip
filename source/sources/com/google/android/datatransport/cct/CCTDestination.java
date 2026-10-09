package com.google.android.datatransport.cct;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedDestination;
import defpackage.u2;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CCTDestination implements EncodedDestination {
    public static final String c;
    public static final Set d;
    public static final CCTDestination e;
    public static final CCTDestination f;
    public final String a;
    public final String b;

    static {
        String a = StringMerger.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        c = a;
        String a2 = StringMerger.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String a3 = StringMerger.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new Encoding("proto"), new Encoding("json"))));
        e = new CCTDestination(a, null);
        f = new CCTDestination(a2, a3);
    }

    public CCTDestination(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static CCTDestination a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        String str2 = null;
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length == 2) {
                String str3 = split[0];
                if (!str3.isEmpty()) {
                    String str4 = split[1];
                    if (!str4.isEmpty()) {
                        str2 = str4;
                    }
                    return new CCTDestination(str3, str2);
                }
                u2.g("Missing endpoint in CCTDestination extras");
                return null;
            }
            u2.g("Extra is not a valid encoded LegacyFlgDestination");
            return null;
        }
        u2.g("Version marker missing from extras");
        return null;
    }
}
