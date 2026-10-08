package coil3.decode;

import coil3.decode.ImageSource;
import defpackage.jb;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import okio.RealBufferedSource;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileImageSource implements ImageSource {
    public final Path j;
    public final FileSystem k;
    public final String l;
    public final AutoCloseable m;
    public final Object n = new Object();
    public boolean o;
    public RealBufferedSource p;

    public FileImageSource(Path path, FileSystem fileSystem, String str, AutoCloseable autoCloseable) {
        this.j = path;
        this.k = fileSystem;
        this.l = str;
        this.m = autoCloseable;
    }

    @Override // coil3.decode.ImageSource
    public final Path I0() {
        return d0();
    }

    @Override // coil3.decode.ImageSource
    public final BufferedSource U0() {
        synchronized (this.n) {
            if (!this.o) {
                RealBufferedSource realBufferedSource = this.p;
                if (realBufferedSource != null) {
                    return realBufferedSource;
                }
                Source X = this.k.X(this.j);
                X.getClass();
                RealBufferedSource realBufferedSource2 = new RealBufferedSource(X);
                this.p = realBufferedSource2;
                return realBufferedSource2;
            }
            throw new IllegalStateException("closed");
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.n) {
            this.o = true;
            RealBufferedSource realBufferedSource = this.p;
            if (realBufferedSource != null) {
                try {
                    realBufferedSource.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
            }
            AutoCloseable autoCloseable = this.m;
            if (autoCloseable != null) {
                try {
                    jb.l(autoCloseable);
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception unused2) {
                }
            }
        }
    }

    @Override // coil3.decode.ImageSource
    public final Path d0() {
        Path path;
        synchronized (this.n) {
            if (!this.o) {
                path = this.j;
            } else {
                throw new IllegalStateException("closed");
            }
        }
        return path;
    }

    @Override // coil3.decode.ImageSource
    public final ImageSource.Metadata e() {
        return null;
    }

    @Override // coil3.decode.ImageSource
    public final FileSystem getFileSystem() {
        return this.k;
    }
}
