package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import okio.internal.SocketAsyncTimeout;

/* loaded from: classes.dex */
public abstract class Okio {
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, okio.Sink] */
    public static final Sink a() {
        return new Object();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [okio.AsyncTimeout$sink$1] */
    public static final AsyncTimeout$sink$1 b(Socket socket) {
        final SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        OutputStream outputStream = socket.getOutputStream();
        outputStream.getClass();
        final OutputStreamSink outputStreamSink = new OutputStreamSink(outputStream, socketAsyncTimeout);
        return new Sink() { // from class: okio.AsyncTimeout$sink$1
            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                Sink sink = outputStreamSink;
                SocketAsyncTimeout socketAsyncTimeout2 = SocketAsyncTimeout.this;
                socketAsyncTimeout2.h();
                try {
                    ((OutputStreamSink) sink).close();
                    if (!socketAsyncTimeout2.i()) {
                    } else {
                        throw socketAsyncTimeout2.k(null);
                    }
                } catch (IOException e) {
                    if (!socketAsyncTimeout2.i()) {
                        throw e;
                    }
                    throw socketAsyncTimeout2.k(e);
                } finally {
                    socketAsyncTimeout2.i();
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public final void flush() {
                Sink sink = outputStreamSink;
                SocketAsyncTimeout socketAsyncTimeout2 = SocketAsyncTimeout.this;
                socketAsyncTimeout2.h();
                try {
                    ((OutputStreamSink) sink).flush();
                    if (!socketAsyncTimeout2.i()) {
                    } else {
                        throw socketAsyncTimeout2.k(null);
                    }
                } catch (IOException e) {
                    if (!socketAsyncTimeout2.i()) {
                        throw e;
                    }
                    throw socketAsyncTimeout2.k(e);
                } finally {
                    socketAsyncTimeout2.i();
                }
            }

            @Override // okio.Sink
            public final Timeout i() {
                return SocketAsyncTimeout.this;
            }

            @Override // okio.Sink
            public final void l0(long j, Buffer buffer) {
                SegmentedByteString.b(buffer.k, 0L, j);
                while (true) {
                    long j2 = 0;
                    if (j > 0) {
                        Segment segment = buffer.j;
                        segment.getClass();
                        while (true) {
                            if (j2 >= 65536) {
                                break;
                            }
                            j2 += segment.c - segment.b;
                            if (j2 >= j) {
                                j2 = j;
                                break;
                            } else {
                                segment = segment.f;
                                segment.getClass();
                            }
                        }
                        Sink sink = outputStreamSink;
                        SocketAsyncTimeout socketAsyncTimeout2 = SocketAsyncTimeout.this;
                        socketAsyncTimeout2.h();
                        try {
                            ((OutputStreamSink) sink).l0(j2, buffer);
                            if (!socketAsyncTimeout2.i()) {
                                j -= j2;
                            } else {
                                throw socketAsyncTimeout2.k(null);
                            }
                        } catch (IOException e) {
                            if (!socketAsyncTimeout2.i()) {
                                throw e;
                            }
                            throw socketAsyncTimeout2.k(e);
                        } finally {
                            socketAsyncTimeout2.i();
                        }
                    } else {
                        return;
                    }
                }
            }

            public final String toString() {
                return "AsyncTimeout.sink(" + outputStreamSink + ')';
            }
        };
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [okio.AsyncTimeout$source$1] */
    public static final AsyncTimeout$source$1 c(Socket socket) {
        final SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        InputStream inputStream = socket.getInputStream();
        inputStream.getClass();
        final InputStreamSource inputStreamSource = new InputStreamSource(inputStream, socketAsyncTimeout);
        return new Source() { // from class: okio.AsyncTimeout$source$1
            @Override // okio.Source
            public final long J0(long j, Buffer buffer) {
                buffer.getClass();
                Source source = inputStreamSource;
                SocketAsyncTimeout socketAsyncTimeout2 = SocketAsyncTimeout.this;
                socketAsyncTimeout2.h();
                try {
                    long J0 = ((InputStreamSource) source).J0(j, buffer);
                    if (!socketAsyncTimeout2.i()) {
                        return J0;
                    }
                    throw socketAsyncTimeout2.k(null);
                } catch (IOException e) {
                    if (!socketAsyncTimeout2.i()) {
                        throw e;
                    }
                    throw socketAsyncTimeout2.k(e);
                } finally {
                    socketAsyncTimeout2.i();
                }
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                Source source = inputStreamSource;
                SocketAsyncTimeout socketAsyncTimeout2 = SocketAsyncTimeout.this;
                socketAsyncTimeout2.h();
                try {
                    ((InputStreamSource) source).close();
                    if (!socketAsyncTimeout2.i()) {
                    } else {
                        throw socketAsyncTimeout2.k(null);
                    }
                } catch (IOException e) {
                    if (!socketAsyncTimeout2.i()) {
                        throw e;
                    }
                    throw socketAsyncTimeout2.k(e);
                } finally {
                    socketAsyncTimeout2.i();
                }
            }

            @Override // okio.Source
            public final Timeout i() {
                return SocketAsyncTimeout.this;
            }

            public final String toString() {
                return "AsyncTimeout.source(" + inputStreamSource + ')';
            }
        };
    }

    public static final Source d(File file) {
        return new InputStreamSource(new FileInputStream(file), Timeout.d);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [okio.Timeout, java.lang.Object] */
    public static final Source e(InputStream inputStream) {
        inputStream.getClass();
        return new InputStreamSource(inputStream, new Object());
    }
}
