.class final Lio/sentry/config/ClasspathPropertiesLoader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/ClassLoader;

.field public final c:Lio/sentry/SystemOutLogger;


# direct methods
.method public constructor <init>(Lio/sentry/SystemOutLogger;)V
    .locals 2

    .line 1
    const-class v0, Lio/sentry/config/ClasspathPropertiesLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "sentry.properties"

    .line 11
    .line 12
    iput-object v1, p0, Lio/sentry/config/ClasspathPropertiesLoader;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Lio/sentry/util/ClassLoaderUtils;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lio/sentry/config/ClasspathPropertiesLoader;->b:Ljava/lang/ClassLoader;

    .line 19
    .line 20
    iput-object p1, p0, Lio/sentry/config/ClasspathPropertiesLoader;->c:Lio/sentry/SystemOutLogger;

    .line 21
    .line 22
    return-void
.end method
