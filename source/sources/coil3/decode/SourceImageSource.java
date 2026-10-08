package coil3.decode;

import coil3.decode.ImageSource;
import kotlin.ExceptionsKt;
import kotlin.ULong;
import kotlin.random.Random;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SourceImageSource implements ImageSource {
    public final FileSystem j;
    public final ImageSource.Metadata k;
    public final Object l = new Object();
    public boolean m;
    public BufferedSource n;
    public Path o;

    public SourceImageSource(BufferedSource bufferedSource, FileSystem fileSystem, ImageSource.Metadata metadata) {
        this.j = fileSystem;
        this.k = metadata;
        this.n = bufferedSource;
    }

    @Override // coil3.decode.ImageSource
    public final Path I0() {
        Path path;
        synchronized (this.l) {
            if (!this.m) {
                path = this.o;
            } else {
                throw new IllegalStateException("closed");
            }
        }
        return path;
    }

    @Override // coil3.decode.ImageSource
    public final BufferedSource U0() {
        synchronized (this.l) {
            if (!this.m) {
                BufferedSource bufferedSource = this.n;
                if (bufferedSource != null) {
                    return bufferedSource;
                }
                FileSystem fileSystem = this.j;
                Path path = this.o;
                path.getClass();
                Source X = fileSystem.X(path);
                X.getClass();
                RealBufferedSource realBufferedSource = new RealBufferedSource(X);
                this.n = realBufferedSource;
                return realBufferedSource;
            }
            throw new IllegalStateException("closed");
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.l) {
            this.m = true;
            BufferedSource bufferedSource = this.n;
            if (bufferedSource != null) {
                try {
                    bufferedSource.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
            }
            Path path = this.o;
            if (path != null) {
                FileSystem fileSystem = this.j;
                fileSystem.getClass();
                fileSystem.v(path);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x007f, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0080, code lost:
    
        throw r9;
     */
    @Override // coil3.decode.ImageSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Path d0() {
        Path e;
        Throwable th;
        synchronized (this.l) {
            if (!this.m) {
                Path path = this.o;
                if (path != null) {
                    return path;
                }
                FileSystem fileSystem = this.j;
                do {
                    Path path2 = FileSystem.k;
                    Random.Default r4 = Random.j;
                    e = path2.e("tmp_".concat(ULong.a(Random.k.c().nextLong())));
                } while (fileSystem.A(e));
                fileSystem.S(e, true).close();
                Sink S = this.j.S(e, false);
                S.getClass();
                RealBufferedSink realBufferedSink = new RealBufferedSink(S);
                try {
                    BufferedSource bufferedSource = this.n;
                    bufferedSource.getClass();
                    bufferedSource.getClass();
                    while (bufferedSource.J0(8192L, realBufferedSink.k) != -1) {
                        realBufferedSink.a();
                    }
                    try {
                        realBufferedSink.close();
                        th = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    try {
                        realBufferedSink.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.a(th3, th4);
                    }
                    th = th3;
                }
                if (th == null) {
                    this.n = null;
                    this.o = e;
                    return e;
                }
                throw th;
            }
            throw new IllegalStateException("closed");
        }
    }

    @Override // coil3.decode.ImageSource
    public final ImageSource.Metadata e() {
        return this.k;
    }

    @Override // coil3.decode.ImageSource
    public final FileSystem getFileSystem() {
        return this.j;
    }
}
