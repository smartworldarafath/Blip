package io.sentry.internal.modules;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.util.ClassLoaderUtils;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ManifestModulesLoader extends ModulesLoader {
    public final Pattern e;
    public final Pattern f;
    public final ClassLoader g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Module {
        public final String a;
        public final String b;

        public Module(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManifestModulesLoader(ILogger iLogger) {
        super(iLogger);
        ClassLoader classLoader = ManifestModulesLoader.class.getClassLoader();
        this.e = Pattern.compile(".*/(.+)!/META-INF/MANIFEST.MF");
        this.f = Pattern.compile("(.*?)-(\\d+\\.\\d+.*).jar");
        this.g = ClassLoaderUtils.a(classLoader);
    }

    @Override // io.sentry.internal.modules.ModulesLoader
    public final Map b() {
        String str;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<URL> resources = this.g.getResources("META-INF/MANIFEST.MF");
            while (resources.hasMoreElements()) {
                Matcher matcher = this.e.matcher(resources.nextElement().toString());
                Module module = null;
                if (matcher.matches() && matcher.groupCount() == 1) {
                    str = matcher.group(1);
                } else {
                    str = null;
                }
                if (str != null) {
                    Matcher matcher2 = this.f.matcher(str);
                    if (matcher2.matches() && matcher2.groupCount() == 2) {
                        module = new Module(matcher2.group(1), matcher2.group(2));
                    }
                }
                if (module != null) {
                    arrayList.add(module);
                }
            }
        } catch (Throwable th) {
            this.a.b(SentryLevel.ERROR, "Unable to detect modules via manifest files.", th);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Module module2 = (Module) it.next();
            hashMap.put(module2.a, module2.b);
        }
        return hashMap;
    }
}
