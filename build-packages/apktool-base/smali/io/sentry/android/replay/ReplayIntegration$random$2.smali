.class final Lio/sentry/android/replay/ReplayIntegration$random$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/sentry/util/Random;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lio/sentry/android/replay/ReplayIntegration$random$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$random$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/sentry/android/replay/ReplayIntegration$random$2;->k:Lio/sentry/android/replay/ReplayIntegration$random$2;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lio/sentry/util/Random;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/sentry/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
