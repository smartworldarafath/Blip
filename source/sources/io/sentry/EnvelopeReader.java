package io.sentry;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EnvelopeReader implements IEnvelopeReader {
    public static final Charset b = Charset.forName("UTF-8");
    public final ISerializer a;

    public EnvelopeReader(ISerializer iSerializer) {
        this.a = iSerializer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00aa, code lost:
    
        r11 = new io.sentry.SentryEnvelope(r1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00af, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b2, code lost:
    
        return r11;
     */
    @Override // io.sentry.IEnvelopeReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SentryEnvelope a(BufferedInputStream bufferedInputStream) {
        ISerializer iSerializer = this.a;
        Charset charset = b;
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        int i2 = -1;
        while (true) {
            try {
                int read = bufferedInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                int i3 = 0;
                while (true) {
                    if (i2 == -1 && i3 < read) {
                        if (bArr[i3] == 10) {
                            i2 = i + i3;
                            break;
                        }
                        i3++;
                    }
                }
                byteArrayOutputStream.write(bArr, 0, read);
                i += read;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length != 0) {
            if (i2 != -1) {
                StringReader stringReader = new StringReader(new String(byteArray, 0, i2, charset));
                try {
                    SentryEnvelopeHeader sentryEnvelopeHeader = (SentryEnvelopeHeader) iSerializer.d(stringReader, SentryEnvelopeHeader.class);
                    stringReader.close();
                    if (sentryEnvelopeHeader != null) {
                        int i4 = i2 + 1;
                        ArrayList arrayList = new ArrayList();
                        while (true) {
                            int i5 = i4;
                            while (true) {
                                if (i5 < byteArray.length) {
                                    if (byteArray[i5] == 10) {
                                        break;
                                    }
                                    i5++;
                                } else {
                                    i5 = -1;
                                    break;
                                }
                            }
                            if (i5 != -1) {
                                stringReader = new StringReader(new String(byteArray, i4, i5 - i4, charset));
                                try {
                                    SentryEnvelopeItemHeader sentryEnvelopeItemHeader = (SentryEnvelopeItemHeader) iSerializer.d(stringReader, SentryEnvelopeItemHeader.class);
                                    stringReader.close();
                                    if (sentryEnvelopeItemHeader == null || sentryEnvelopeItemHeader.a() <= 0) {
                                        break;
                                    }
                                    int a = sentryEnvelopeItemHeader.a() + i5;
                                    int i6 = a + 1;
                                    if (i6 <= byteArray.length) {
                                        arrayList.add(new SentryEnvelopeItem(sentryEnvelopeItemHeader, Arrays.copyOfRange(byteArray, i5 + 1, i6)));
                                        if (i6 == byteArray.length) {
                                            break;
                                        }
                                        i4 = a + 2;
                                        if (i4 == byteArray.length) {
                                            if (byteArray[i6] != 10) {
                                                throw new IllegalArgumentException("Envelope has invalid data following an item.");
                                            }
                                        }
                                    } else {
                                        throw new IllegalArgumentException("Invalid length for item at index '" + arrayList.size() + "'. Item is '" + i6 + "' bytes. There are '" + byteArray.length + "' in the buffer.");
                                    }
                                } finally {
                                }
                            } else {
                                throw new IllegalArgumentException("Invalid envelope. Item at index '" + arrayList.size() + "'. has no header delimiter.");
                            }
                        }
                        throw new IllegalArgumentException("Item header at index '" + arrayList.size() + "' is null or empty.");
                    }
                    throw new IllegalArgumentException("Envelope header is null.");
                } finally {
                }
            }
            throw new IllegalArgumentException("Envelope contains no header.");
        }
        throw new IllegalArgumentException("Empty stream.");
    }
}
