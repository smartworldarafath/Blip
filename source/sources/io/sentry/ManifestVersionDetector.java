package io.sentry;

import io.sentry.internal.ManifestVersionReader;
import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;
import java.util.jar.Attributes;
import java.util.jar.Manifest;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ManifestVersionDetector implements IVersionDetector {
    public final SentryOptions a;

    public ManifestVersionDetector(SentryOptions sentryOptions) {
        this.a = sentryOptions;
    }

    @Override // io.sentry.IVersionDetector
    public final boolean a() {
        if (ManifestVersionReader.c == null) {
            ISentryLifecycleToken a = ManifestVersionReader.d.a();
            try {
                if (ManifestVersionReader.c == null) {
                    ManifestVersionReader.c = new ManifestVersionReader();
                }
                a.close();
            } catch (Throwable th) {
                try {
                    a.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        ManifestVersionReader manifestVersionReader = ManifestVersionReader.c;
        if (!manifestVersionReader.a) {
            try {
                ISentryLifecycleToken a2 = manifestVersionReader.b.a();
                try {
                    if (!manifestVersionReader.a) {
                        Enumeration<URL> resources = ClassLoader.getSystemClassLoader().getResources("META-INF/MANIFEST.MF");
                        while (resources.hasMoreElements()) {
                            try {
                                Attributes mainAttributes = new Manifest(resources.nextElement().openStream()).getMainAttributes();
                                if (mainAttributes != null) {
                                    String value = mainAttributes.getValue("Sentry-Opentelemetry-SDK-Name");
                                    String value2 = mainAttributes.getValue("Implementation-Version");
                                    String value3 = mainAttributes.getValue("Sentry-SDK-Name");
                                    String value4 = mainAttributes.getValue("Sentry-SDK-Package-Name");
                                    if (value != null && value2 != null) {
                                        String value5 = mainAttributes.getValue("Sentry-Opentelemetry-Version-Name");
                                        if (value5 != null) {
                                            SentryIntegrationPackageStorage.d().b("maven:io.opentelemetry:opentelemetry-sdk", value5);
                                            SentryIntegrationPackageStorage.d().a("OpenTelemetry");
                                        }
                                        String value6 = mainAttributes.getValue("Sentry-Opentelemetry-Javaagent-Version-Name");
                                        if (value6 != null) {
                                            SentryIntegrationPackageStorage.d().b("maven:io.opentelemetry.javaagent:opentelemetry-javaagent", value6);
                                            SentryIntegrationPackageStorage.d().a("OpenTelemetry-Agent");
                                        }
                                        if (value.equals("sentry.java.opentelemetry.agentless")) {
                                            SentryIntegrationPackageStorage.d().a("OpenTelemetry-Agentless");
                                        }
                                        if (value.equals("sentry.java.opentelemetry.agentless-spring")) {
                                            SentryIntegrationPackageStorage.d().a("OpenTelemetry-Agentless-Spring");
                                        }
                                    }
                                    if (value3 != null && value2 != null && value4 != null && value3.startsWith("sentry.java")) {
                                        SentryIntegrationPackageStorage.d().b(value4, value2);
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                    a2.close();
                } finally {
                }
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                manifestVersionReader.a = true;
                throw th3;
            }
            manifestVersionReader.a = true;
        }
        return SentryIntegrationPackageStorage.d().c(this.a.getFatalLogger());
    }
}
