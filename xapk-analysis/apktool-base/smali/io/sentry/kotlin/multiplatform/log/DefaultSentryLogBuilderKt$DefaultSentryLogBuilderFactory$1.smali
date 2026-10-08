.class final synthetic Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilderKt$DefaultSentryLogBuilderFactory$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilderKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilder;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilderKt$DefaultSentryLogBuilderFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilderKt$DefaultSentryLogBuilderFactory$1;

    .line 2
    .line 3
    const-string v4, "<init>()V"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-class v2, Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilder;

    .line 8
    .line 9
    const-string v3, "<init>"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilderKt$DefaultSentryLogBuilderFactory$1;->r:Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilderKt$DefaultSentryLogBuilderFactory$1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/text/Regex;

    .line 7
    .line 8
    const-string v1, "%%|%s"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilder;->a:[Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
