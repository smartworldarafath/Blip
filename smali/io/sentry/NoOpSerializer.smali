.class final Lio/sentry/NoOpSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ISerializer;


# static fields
.field public static final a:Lio/sentry/NoOpSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/NoOpSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/NoOpSerializer;->a:Lio/sentry/NoOpSerializer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final e(Ljava/io/BufferedInputStream;)Lio/sentry/SentryEnvelope;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
