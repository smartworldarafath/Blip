package androidx.media3.extractor.metadata.scte35;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SpliceInfoDecoder extends SimpleMetadataDecoder {
    public final ParsableByteArray a = new ParsableByteArray();
    public final ParsableBitArray b = new ParsableBitArray();
    public TimestampAdjuster c;

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        if (r5 != r7) goto L14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        Object obj;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        long j;
        boolean z5;
        boolean z6;
        boolean z7;
        long j2;
        long j3;
        ParsableByteArray parsableByteArray = this.a;
        ParsableBitArray parsableBitArray = this.b;
        TimestampAdjuster timestampAdjuster = this.c;
        if (timestampAdjuster != null) {
            long j4 = metadataInputBuffer.q;
            synchronized (timestampAdjuster) {
                long j5 = timestampAdjuster.b;
            }
        }
        TimestampAdjuster timestampAdjuster2 = new TimestampAdjuster(metadataInputBuffer.n);
        this.c = timestampAdjuster2;
        timestampAdjuster2.a(metadataInputBuffer.n - metadataInputBuffer.q);
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        parsableByteArray.K(limit, array);
        parsableBitArray.k(limit, array);
        parsableBitArray.o(39);
        long g = (parsableBitArray.g(1) << 32) | parsableBitArray.g(32);
        parsableBitArray.o(20);
        int g2 = parsableBitArray.g(12);
        int g3 = parsableBitArray.g(8);
        parsableByteArray.N(14);
        if (g3 != 0) {
            if (g3 != 255) {
                if (g3 != 4) {
                    if (g3 != 5) {
                        if (g3 != 6) {
                            obj = null;
                        } else {
                            TimestampAdjuster timestampAdjuster3 = this.c;
                            long d = TimeSignalCommand.d(g, parsableByteArray);
                            obj = new TimeSignalCommand(d, timestampAdjuster3.b(d));
                        }
                    } else {
                        TimestampAdjuster timestampAdjuster4 = this.c;
                        parsableByteArray.B();
                        if ((parsableByteArray.z() & 128) != 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        List list = Collections.EMPTY_LIST;
                        if (!z4) {
                            int z8 = parsableByteArray.z();
                            if ((z8 & 64) != 0) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if ((z8 & 32) != 0) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            if ((z8 & 16) != 0) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (z5 && !z7) {
                                j2 = TimeSignalCommand.d(g, parsableByteArray);
                            } else {
                                j2 = -9223372036854775807L;
                            }
                            if (!z5) {
                                int z9 = parsableByteArray.z();
                                ArrayList arrayList = new ArrayList(z9);
                                for (int i = 0; i < z9; i++) {
                                    parsableByteArray.z();
                                    if (!z7) {
                                        j3 = TimeSignalCommand.d(g, parsableByteArray);
                                    } else {
                                        j3 = -9223372036854775807L;
                                    }
                                    timestampAdjuster4.b(j3);
                                    arrayList.add(new Object());
                                }
                                list = arrayList;
                            }
                            if (z6) {
                                parsableByteArray.z();
                                parsableByteArray.B();
                            }
                            parsableByteArray.G();
                            parsableByteArray.z();
                            parsableByteArray.z();
                            j = j2;
                        } else {
                            j = -9223372036854775807L;
                        }
                        obj = new SpliceInsertCommand(j, timestampAdjuster4.b(j), list);
                    }
                } else {
                    int z10 = parsableByteArray.z();
                    ArrayList arrayList2 = new ArrayList(z10);
                    for (int i2 = 0; i2 < z10; i2++) {
                        parsableByteArray.B();
                        if ((parsableByteArray.z() & 128) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        ArrayList arrayList3 = new ArrayList();
                        if (!z) {
                            int z11 = parsableByteArray.z();
                            if ((z11 & 64) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if ((z11 & 32) != 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z2) {
                                parsableByteArray.B();
                            }
                            if (!z2) {
                                int z12 = parsableByteArray.z();
                                ArrayList arrayList4 = new ArrayList(z12);
                                for (int i3 = 0; i3 < z12; i3++) {
                                    parsableByteArray.z();
                                    parsableByteArray.B();
                                    arrayList4.add(new Object());
                                }
                                arrayList3 = arrayList4;
                            }
                            if (z3) {
                                parsableByteArray.z();
                                parsableByteArray.B();
                            }
                            parsableByteArray.G();
                            parsableByteArray.z();
                            parsableByteArray.z();
                        }
                        Object obj2 = new Object();
                        Collections.unmodifiableList(arrayList3);
                        arrayList2.add(obj2);
                    }
                    obj = new Object();
                    Collections.unmodifiableList(arrayList2);
                }
            } else {
                long B = parsableByteArray.B();
                int i4 = g2 - 4;
                parsableByteArray.k(new byte[i4], 0, i4);
                obj = new PrivateCommand(B, g);
            }
        } else {
            obj = new Object();
        }
        if (obj == null) {
            return new Metadata(new Metadata.Entry[0]);
        }
        return new Metadata(obj);
    }
}
