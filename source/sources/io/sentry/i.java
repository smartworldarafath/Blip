package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.clientreport.ClientReport;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ ISerializer b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i(ISerializer iSerializer, Object obj, int i) {
        this.a = i;
        this.b = iSerializer;
        this.c = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ByteArrayOutputStream byteArrayOutputStream;
        BufferedWriter bufferedWriter;
        int i = this.a;
        Object obj = this.c;
        ISerializer iSerializer = this.b;
        switch (i) {
            case 0:
                SentryMetricsEvents sentryMetricsEvents = (SentryMetricsEvents) obj;
                Charset charset = SentryEnvelopeItem.d;
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream2, SentryEnvelopeItem.d));
                    try {
                        iSerializer.a(sentryMetricsEvents, bufferedWriter2);
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        bufferedWriter2.close();
                        byteArrayOutputStream2.close();
                        return byteArray;
                    } finally {
                        try {
                            bufferedWriter2.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            case 1:
                SentryBaseEvent sentryBaseEvent = (SentryBaseEvent) obj;
                Charset charset2 = SentryEnvelopeItem.d;
                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                try {
                    BufferedWriter bufferedWriter3 = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream3, SentryEnvelopeItem.d));
                    try {
                        iSerializer.a(sentryBaseEvent, bufferedWriter3);
                        byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
                        bufferedWriter3.close();
                        byteArrayOutputStream3.close();
                        return byteArray2;
                    } finally {
                        try {
                            bufferedWriter3.close();
                        } catch (Throwable th4) {
                            th.addSuppressed(th4);
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        byteArrayOutputStream3.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                    throw th5;
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ClientReport clientReport = (ClientReport) obj;
                Charset charset3 = SentryEnvelopeItem.d;
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, SentryEnvelopeItem.d));
                    try {
                        iSerializer.a(clientReport, bufferedWriter);
                        byte[] byteArray3 = byteArrayOutputStream.toByteArray();
                        bufferedWriter.close();
                        byteArrayOutputStream.close();
                        return byteArray3;
                    } finally {
                        try {
                            bufferedWriter.close();
                        } catch (Throwable th7) {
                            th.addSuppressed(th7);
                        }
                    }
                } finally {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th8) {
                        th.addSuppressed(th8);
                    }
                }
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Session session = (Session) obj;
                Charset charset4 = SentryEnvelopeItem.d;
                ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                try {
                    BufferedWriter bufferedWriter4 = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream4, SentryEnvelopeItem.d));
                    try {
                        iSerializer.a(session, bufferedWriter4);
                        byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                        bufferedWriter4.close();
                        byteArrayOutputStream4.close();
                        return byteArray4;
                    } finally {
                        try {
                            bufferedWriter4.close();
                        } catch (Throwable th9) {
                            th.addSuppressed(th9);
                        }
                    }
                } catch (Throwable th10) {
                    try {
                        byteArrayOutputStream4.close();
                    } catch (Throwable th11) {
                        th10.addSuppressed(th11);
                    }
                    throw th10;
                }
            default:
                SentryLogEvents sentryLogEvents = (SentryLogEvents) obj;
                Charset charset5 = SentryEnvelopeItem.d;
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, SentryEnvelopeItem.d));
                    try {
                        iSerializer.a(sentryLogEvents, bufferedWriter);
                        byte[] byteArray5 = byteArrayOutputStream.toByteArray();
                        bufferedWriter.close();
                        byteArrayOutputStream.close();
                        return byteArray5;
                    } finally {
                    }
                } catch (Throwable th12) {
                    throw th12;
                }
        }
    }
}
