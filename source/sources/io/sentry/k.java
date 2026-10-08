package io.sentry;

import defpackage.q;
import io.sentry.protocol.ViewHierarchy;
import io.sentry.util.FileUtils;
import io.sentry.util.JsonSerializationUtils;
import io.sentry.vendor.Base64;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements Callable {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ long b;
    public final /* synthetic */ ISerializer c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ k(Attachment attachment, long j, ISerializer iSerializer, ILogger iLogger) {
        this.d = attachment;
        this.b = j;
        this.c = iSerializer;
        this.e = iLogger;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        ISerializer iSerializer = this.c;
        Object obj = this.e;
        long j = this.b;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                Attachment attachment = (Attachment) obj2;
                ILogger iLogger = (ILogger) obj;
                Charset charset = SentryEnvelopeItem.d;
                byte[] bArr = attachment.a;
                String str = attachment.d;
                if (bArr != null) {
                    SentryEnvelopeItem.a(bArr.length, j, str);
                } else {
                    ViewHierarchy viewHierarchy = attachment.b;
                    if (viewHierarchy != null) {
                        Charset charset2 = JsonSerializationUtils.a;
                        try {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, JsonSerializationUtils.a));
                                try {
                                    iSerializer.a(viewHierarchy, bufferedWriter);
                                    bArr = byteArrayOutputStream.toByteArray();
                                    bufferedWriter.close();
                                    byteArrayOutputStream.close();
                                } finally {
                                }
                            } catch (Throwable th) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            iLogger.b(SentryLevel.ERROR, "Could not serialize serializable", th3);
                            bArr = null;
                        }
                        if (bArr != null) {
                            SentryEnvelopeItem.a(bArr.length, j, str);
                        }
                        throw new Exception(q.i("Couldn't attach the attachment ", str, ".\nPlease check that either bytes, serializable, path or provider is set."));
                    }
                    io.sentry.android.core.k kVar = attachment.c;
                    if (kVar != null && (bArr = (byte[]) kVar.call()) != null) {
                        SentryEnvelopeItem.a(bArr.length, j, str);
                    }
                    throw new Exception(q.i("Couldn't attach the attachment ", str, ".\nPlease check that either bytes, serializable, path or provider is set."));
                }
                return bArr;
            default:
                File file = (File) obj2;
                ProfilingTraceData profilingTraceData = (ProfilingTraceData) obj;
                Charset charset3 = SentryEnvelopeItem.d;
                if (file.exists()) {
                    try {
                        String str2 = new String(Base64.a(FileUtils.b(j, file.getPath())), "US-ASCII");
                        if (!str2.isEmpty()) {
                            profilingTraceData.K = str2;
                            try {
                                profilingTraceData.u = (List) profilingTraceData.k.call();
                            } catch (Throwable unused) {
                            }
                            try {
                                try {
                                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                    try {
                                        BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream2, SentryEnvelopeItem.d));
                                        try {
                                            iSerializer.a(profilingTraceData, bufferedWriter2);
                                            byte[] byteArray = byteArrayOutputStream2.toByteArray();
                                            bufferedWriter2.close();
                                            byteArrayOutputStream2.close();
                                            return byteArray;
                                        } finally {
                                        }
                                    } catch (Throwable th4) {
                                        try {
                                            byteArrayOutputStream2.close();
                                        } catch (Throwable th5) {
                                            th4.addSuppressed(th5);
                                        }
                                        throw th4;
                                    }
                                } finally {
                                    file.delete();
                                }
                            } catch (IOException e) {
                                throw new Exception("Failed to serialize profiling trace data\n" + e.getMessage());
                            }
                        }
                        throw new Exception("Profiling trace file is empty");
                    } catch (UnsupportedEncodingException e2) {
                        throw new AssertionError(e2);
                    }
                }
                throw new Exception(q.i("Dropping profiling trace data, because the file '", file.getName(), "' doesn't exists"));
        }
    }

    public /* synthetic */ k(File file, long j, ProfilingTraceData profilingTraceData, ISerializer iSerializer) {
        this.d = file;
        this.b = j;
        this.e = profilingTraceData;
        this.c = iSerializer;
    }
}
