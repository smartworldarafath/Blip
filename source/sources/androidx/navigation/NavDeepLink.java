package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavDeepLink;
import defpackage.sb;
import io.sentry.SentryOptions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavDeepLink {
    public static final Regex m = new Regex("^[a-zA-Z]+[+\\w\\-.]*:");
    public static final Regex n = new Regex("\\{(.+?)\\}");
    public static final Regex o = new Regex("http[s]?://");
    public static final Regex p = new Regex(SentryOptions.DEFAULT_PROPAGATION_TARGETS);
    public static final Regex q = new Regex("([^/]*?|)");
    public static final Regex r = new Regex("^[^?#]+\\?([^#]*).*");
    public final String a;
    public final ArrayList b;
    public final String c;
    public final Lazy d;
    public final Lazy e;
    public final Lazy f;
    public boolean g;
    public final Lazy h;
    public final Lazy i;
    public final Lazy j;
    public final Lazy k;
    public final boolean l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public String a;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ParamQuery {
        public String a;
        public final ArrayList b = new ArrayList();
    }

    public NavDeepLink(String str) {
        this.a = str;
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        boolean z = false;
        z = false;
        final int i = z ? 1 : 0;
        this.d = LazyKt.b(new Function0(this) { // from class: rb
            public final /* synthetic */ NavDeepLink k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                List list;
                int i2 = i;
                boolean z2 = false;
                NavDeepLink navDeepLink = this.k;
                switch (i2) {
                    case 0:
                        String str2 = navDeepLink.c;
                        if (str2 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr = RegexOption.j;
                        return new Regex(str2, 0);
                    case 1:
                        String str3 = navDeepLink.a;
                        if (str3 != null && NavDeepLink.r.d(str3)) {
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String str4 = navDeepLink.a;
                        if (str4 == null) {
                            return null;
                        }
                        Uri parse = Uri.parse(str4);
                        parse.getClass();
                        if (parse.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse2 = Uri.parse(str4);
                        parse2.getClass();
                        String fragment = parse2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Regex regex = NavDeepLink.m;
                        Pair pair = (Pair) navDeepLink.h.getValue();
                        if (pair == null || (list = (List) pair.j) == null) {
                            return new ArrayList();
                        }
                        return list;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Regex regex2 = NavDeepLink.m;
                        Pair pair2 = (Pair) navDeepLink.h.getValue();
                        if (pair2 == null) {
                            return null;
                        }
                        return (String) pair2.k;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        String str5 = (String) navDeepLink.j.getValue();
                        if (str5 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr2 = RegexOption.j;
                        return new Regex(str5, 0);
                    default:
                        return null;
                }
            }
        });
        final int i2 = 1;
        this.e = LazyKt.b(new Function0(this) { // from class: rb
            public final /* synthetic */ NavDeepLink k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                List list;
                int i22 = i2;
                boolean z2 = false;
                NavDeepLink navDeepLink = this.k;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.c;
                        if (str2 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr = RegexOption.j;
                        return new Regex(str2, 0);
                    case 1:
                        String str3 = navDeepLink.a;
                        if (str3 != null && NavDeepLink.r.d(str3)) {
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String str4 = navDeepLink.a;
                        if (str4 == null) {
                            return null;
                        }
                        Uri parse = Uri.parse(str4);
                        parse.getClass();
                        if (parse.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse2 = Uri.parse(str4);
                        parse2.getClass();
                        String fragment = parse2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Regex regex = NavDeepLink.m;
                        Pair pair = (Pair) navDeepLink.h.getValue();
                        if (pair == null || (list = (List) pair.j) == null) {
                            return new ArrayList();
                        }
                        return list;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Regex regex2 = NavDeepLink.m;
                        Pair pair2 = (Pair) navDeepLink.h.getValue();
                        if (pair2 == null) {
                            return null;
                        }
                        return (String) pair2.k;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        String str5 = (String) navDeepLink.j.getValue();
                        if (str5 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr2 = RegexOption.j;
                        return new Regex(str5, 0);
                    default:
                        return null;
                }
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        this.f = LazyKt.a(lazyThreadSafetyMode, new b(i2, this));
        final int i3 = 2;
        this.h = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: rb
            public final /* synthetic */ NavDeepLink k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                List list;
                int i22 = i3;
                boolean z2 = false;
                NavDeepLink navDeepLink = this.k;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.c;
                        if (str2 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr = RegexOption.j;
                        return new Regex(str2, 0);
                    case 1:
                        String str3 = navDeepLink.a;
                        if (str3 != null && NavDeepLink.r.d(str3)) {
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String str4 = navDeepLink.a;
                        if (str4 == null) {
                            return null;
                        }
                        Uri parse = Uri.parse(str4);
                        parse.getClass();
                        if (parse.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse2 = Uri.parse(str4);
                        parse2.getClass();
                        String fragment = parse2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Regex regex = NavDeepLink.m;
                        Pair pair = (Pair) navDeepLink.h.getValue();
                        if (pair == null || (list = (List) pair.j) == null) {
                            return new ArrayList();
                        }
                        return list;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Regex regex2 = NavDeepLink.m;
                        Pair pair2 = (Pair) navDeepLink.h.getValue();
                        if (pair2 == null) {
                            return null;
                        }
                        return (String) pair2.k;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        String str5 = (String) navDeepLink.j.getValue();
                        if (str5 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr2 = RegexOption.j;
                        return new Regex(str5, 0);
                    default:
                        return null;
                }
            }
        });
        final int i4 = 3;
        this.i = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: rb
            public final /* synthetic */ NavDeepLink k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                List list;
                int i22 = i4;
                boolean z2 = false;
                NavDeepLink navDeepLink = this.k;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.c;
                        if (str2 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr = RegexOption.j;
                        return new Regex(str2, 0);
                    case 1:
                        String str3 = navDeepLink.a;
                        if (str3 != null && NavDeepLink.r.d(str3)) {
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String str4 = navDeepLink.a;
                        if (str4 == null) {
                            return null;
                        }
                        Uri parse = Uri.parse(str4);
                        parse.getClass();
                        if (parse.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse2 = Uri.parse(str4);
                        parse2.getClass();
                        String fragment = parse2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Regex regex = NavDeepLink.m;
                        Pair pair = (Pair) navDeepLink.h.getValue();
                        if (pair == null || (list = (List) pair.j) == null) {
                            return new ArrayList();
                        }
                        return list;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Regex regex2 = NavDeepLink.m;
                        Pair pair2 = (Pair) navDeepLink.h.getValue();
                        if (pair2 == null) {
                            return null;
                        }
                        return (String) pair2.k;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        String str5 = (String) navDeepLink.j.getValue();
                        if (str5 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr2 = RegexOption.j;
                        return new Regex(str5, 0);
                    default:
                        return null;
                }
            }
        });
        final int i5 = 4;
        this.j = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: rb
            public final /* synthetic */ NavDeepLink k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                List list;
                int i22 = i5;
                boolean z2 = false;
                NavDeepLink navDeepLink = this.k;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.c;
                        if (str2 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr = RegexOption.j;
                        return new Regex(str2, 0);
                    case 1:
                        String str3 = navDeepLink.a;
                        if (str3 != null && NavDeepLink.r.d(str3)) {
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String str4 = navDeepLink.a;
                        if (str4 == null) {
                            return null;
                        }
                        Uri parse = Uri.parse(str4);
                        parse.getClass();
                        if (parse.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse2 = Uri.parse(str4);
                        parse2.getClass();
                        String fragment = parse2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Regex regex = NavDeepLink.m;
                        Pair pair = (Pair) navDeepLink.h.getValue();
                        if (pair == null || (list = (List) pair.j) == null) {
                            return new ArrayList();
                        }
                        return list;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Regex regex2 = NavDeepLink.m;
                        Pair pair2 = (Pair) navDeepLink.h.getValue();
                        if (pair2 == null) {
                            return null;
                        }
                        return (String) pair2.k;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        String str5 = (String) navDeepLink.j.getValue();
                        if (str5 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr2 = RegexOption.j;
                        return new Regex(str5, 0);
                    default:
                        return null;
                }
            }
        });
        final int i6 = 5;
        this.k = LazyKt.b(new Function0(this) { // from class: rb
            public final /* synthetic */ NavDeepLink k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                List list;
                int i22 = i6;
                boolean z2 = false;
                NavDeepLink navDeepLink = this.k;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.c;
                        if (str2 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr = RegexOption.j;
                        return new Regex(str2, 0);
                    case 1:
                        String str3 = navDeepLink.a;
                        if (str3 != null && NavDeepLink.r.d(str3)) {
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String str4 = navDeepLink.a;
                        if (str4 == null) {
                            return null;
                        }
                        Uri parse = Uri.parse(str4);
                        parse.getClass();
                        if (parse.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse2 = Uri.parse(str4);
                        parse2.getClass();
                        String fragment = parse2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Regex regex = NavDeepLink.m;
                        Pair pair = (Pair) navDeepLink.h.getValue();
                        if (pair == null || (list = (List) pair.j) == null) {
                            return new ArrayList();
                        }
                        return list;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Regex regex2 = NavDeepLink.m;
                        Pair pair2 = (Pair) navDeepLink.h.getValue();
                        if (pair2 == null) {
                            return null;
                        }
                        return (String) pair2.k;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        String str5 = (String) navDeepLink.j.getValue();
                        if (str5 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr2 = RegexOption.j;
                        return new Regex(str5, 0);
                    default:
                        return null;
                }
            }
        });
        final int i7 = 6;
        LazyKt.b(new Function0(this) { // from class: rb
            public final /* synthetic */ NavDeepLink k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                List list;
                int i22 = i7;
                boolean z2 = false;
                NavDeepLink navDeepLink = this.k;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.c;
                        if (str2 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr = RegexOption.j;
                        return new Regex(str2, 0);
                    case 1:
                        String str3 = navDeepLink.a;
                        if (str3 != null && NavDeepLink.r.d(str3)) {
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String str4 = navDeepLink.a;
                        if (str4 == null) {
                            return null;
                        }
                        Uri parse = Uri.parse(str4);
                        parse.getClass();
                        if (parse.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse2 = Uri.parse(str4);
                        parse2.getClass();
                        String fragment = parse2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Regex regex = NavDeepLink.m;
                        Pair pair = (Pair) navDeepLink.h.getValue();
                        if (pair == null || (list = (List) pair.j) == null) {
                            return new ArrayList();
                        }
                        return list;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Regex regex2 = NavDeepLink.m;
                        Pair pair2 = (Pair) navDeepLink.h.getValue();
                        if (pair2 == null) {
                            return null;
                        }
                        return (String) pair2.k;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        String str5 = (String) navDeepLink.j.getValue();
                        if (str5 == null) {
                            return null;
                        }
                        RegexOption[] regexOptionArr2 = RegexOption.j;
                        return new Regex(str5, 0);
                    default:
                        return null;
                }
            }
        });
        if (str == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("^");
        Regex regex = m;
        regex.getClass();
        if (!regex.j.matcher(str).find()) {
            String pattern = o.j.pattern();
            pattern.getClass();
            sb.append(pattern);
        }
        MatchResult a = Regex.a(new Regex("(\\?|#|$)"), str);
        if (a != null) {
            a(str.substring(0, a.b().j), arrayList, sb);
            Regex regex2 = p;
            regex2.getClass();
            if (!regex2.j.matcher(sb).find()) {
                Regex regex3 = q;
                regex3.getClass();
                if (!regex3.j.matcher(sb).find()) {
                    z = true;
                }
            }
            this.l = z;
            sb.append("($|(\\?(.)*)|(#(.)*))");
        }
        this.c = g(sb.toString());
    }

    public static void a(String str, ArrayList arrayList, StringBuilder sb) {
        int i = 0;
        for (MatchResult a = Regex.a(n, str); a != null; a = a.next()) {
            MatchGroup c = a.a().c(1);
            c.getClass();
            arrayList.add(c.a);
            if (a.b().j > i) {
                String quote = Pattern.quote(str.substring(i, a.b().j));
                quote.getClass();
                sb.append(quote);
            }
            String pattern = q.j.pattern();
            pattern.getClass();
            sb.append(pattern);
            i = a.b().k + 1;
        }
        if (i < str.length()) {
            String quote2 = Pattern.quote(str.substring(i));
            quote2.getClass();
            sb.append(quote2);
        }
    }

    public static void f(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (navArgument != null) {
            NavType navType = navArgument.a;
            str.getClass();
            navType.e(bundle, str, navType.d(str2));
        } else {
            str.getClass();
            bundle.putString(str, str2);
        }
    }

    public static String g(String str) {
        if (StringsKt.i(str, "\\Q", false) && StringsKt.i(str, "\\E", false)) {
            return StringsKt.F(str, SentryOptions.DEFAULT_PROPAGATION_TARGETS, "\\E.*\\Q");
        }
        if (StringsKt.i(str, "\\.\\*", false)) {
            return StringsKt.F(str, "\\.\\*", SentryOptions.DEFAULT_PROPAGATION_TARGETS);
        }
        return str;
    }

    public final ArrayList b() {
        Collection values = ((Map) this.f.getValue()).values();
        ArrayList arrayList = new ArrayList();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            CollectionsKt.g(arrayList, ((ParamQuery) it.next()).b);
        }
        return CollectionsKt.F(CollectionsKt.F(this.b, arrayList), (List) this.i.getValue());
    }

    public final Bundle c(Uri uri, LinkedHashMap linkedHashMap) {
        MatchResult c;
        MatchResult c2;
        String str;
        uri.getClass();
        linkedHashMap.getClass();
        Regex regex = (Regex) this.d.getValue();
        if (regex != null && (c = regex.c(uri.toString())) != null) {
            Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            if (d(c, a, linkedHashMap) && (!((Boolean) this.e.getValue()).booleanValue() || e(uri, a, linkedHashMap))) {
                String fragment = uri.getFragment();
                Regex regex2 = (Regex) this.k.getValue();
                if (regex2 != null && (c2 = regex2.c(String.valueOf(fragment))) != null) {
                    List list = (List) this.i.getValue();
                    ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
                    int i = 0;
                    for (Object obj : list) {
                        int i2 = i + 1;
                        if (i >= 0) {
                            String str2 = (String) obj;
                            MatchGroup c3 = c2.a().c(i2);
                            if (c3 != null) {
                                str = Uri.decode(c3.a);
                                str.getClass();
                            } else {
                                str = null;
                            }
                            if (str == null) {
                                str = "";
                            }
                            try {
                                f(a, str2, str, (NavArgument) linkedHashMap.get(str2));
                                arrayList.add(Unit.a);
                                i = i2;
                            } catch (IllegalArgumentException unused) {
                            }
                        } else {
                            CollectionsKt.T();
                            throw null;
                        }
                    }
                }
                if (NavArgumentKt.a(linkedHashMap, new sb(0, a)).isEmpty()) {
                    return a;
                }
            }
        }
        return null;
    }

    public final boolean d(MatchResult matchResult, Bundle bundle, Map map) {
        ArrayList arrayList = this.b;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            String str = null;
            if (i >= 0) {
                String str2 = (String) next;
                MatchGroup c = matchResult.a().c(i2);
                if (c != null) {
                    str = Uri.decode(c.a);
                    str.getClass();
                }
                if (str == null) {
                    str = "";
                }
                try {
                    f(bundle, str2, str, (NavArgument) map.get(str2));
                    arrayList2.add(Unit.a);
                    i = i2;
                } catch (IllegalArgumentException unused) {
                    return false;
                }
            } else {
                CollectionsKt.T();
                throw null;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [int] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r22v0, types: [java.util.Map] */
    public final boolean e(Uri uri, Bundle bundle, Map map) {
        MatchResult matchResult;
        String str;
        Object obj;
        boolean z;
        NavType navType;
        String query;
        loop0: for (Map.Entry entry : ((Map) this.f.getValue()).entrySet()) {
            String str2 = (String) entry.getKey();
            ParamQuery paramQuery = (ParamQuery) entry.getValue();
            List<String> queryParameters = uri.getQueryParameters(str2);
            if (this.g && (query = uri.getQuery()) != null && !query.equals(uri.toString())) {
                queryParameters = CollectionsKt.B(query);
            }
            Object obj2 = Unit.a;
            boolean z2 = false;
            Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            Iterator it = paramQuery.b.iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                NavArgument navArgument = (NavArgument) map.get(str3);
                if (navArgument != null) {
                    navType = navArgument.a;
                } else {
                    navType = null;
                }
                if ((navType instanceof CollectionNavType) && !navArgument.b) {
                    CollectionNavType collectionNavType = (CollectionNavType) navType;
                    collectionNavType.e(a, str3, collectionNavType.f());
                }
            }
            for (String str4 : queryParameters) {
                String str5 = paramQuery.a;
                if (str5 != null) {
                    matchResult = new Regex(str5).c(str4);
                } else {
                    matchResult = null;
                }
                if (matchResult == null) {
                    return z2;
                }
                ArrayList arrayList = paramQuery.b;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
                Iterator it2 = arrayList.iterator();
                ?? r14 = z2;
                while (it2.hasNext()) {
                    Object next = it2.next();
                    int i = r14 + 1;
                    if (r14 >= 0) {
                        String str6 = (String) next;
                        MatchGroup c = matchResult.a().c(i);
                        if (c != null) {
                            str = c.a;
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            str = "";
                        }
                        NavArgument navArgument2 = (NavArgument) map.get(str6);
                        try {
                            str6.getClass();
                            if (!a.containsKey(str6)) {
                                f(a, str6, str, navArgument2);
                                obj = obj2;
                            } else {
                                if (!a.containsKey(str6)) {
                                    z = true;
                                } else {
                                    if (navArgument2 != null) {
                                        NavType navType2 = navArgument2.a;
                                        Object a2 = navType2.a(str6, a);
                                        if (a.containsKey(str6)) {
                                            navType2.e(a, str6, navType2.c(a2, str));
                                        } else {
                                            throw new IllegalArgumentException("There is no previous value in this savedState.");
                                            break loop0;
                                        }
                                    }
                                    z = false;
                                }
                                try {
                                    obj = Boolean.valueOf(z);
                                } catch (IllegalArgumentException unused) {
                                    obj = obj2;
                                    arrayList2.add(obj);
                                    r14 = i;
                                    z2 = false;
                                }
                            }
                        } catch (IllegalArgumentException unused2) {
                        }
                        arrayList2.add(obj);
                        r14 = i;
                        z2 = false;
                    } else {
                        CollectionsKt.T();
                        throw null;
                    }
                }
            }
            bundle.putAll(a);
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof NavDeepLink)) {
            if (Intrinsics.a(this.a, ((NavDeepLink) obj).a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        String str = this.a;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return i * 961;
    }
}
