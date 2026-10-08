.class public abstract Lio/sentry/android/replay/SentryReplayModifiers;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    const-string v1, "SentryPrivacy"

    .line 4
    .line 5
    sget-object v2, Lio/sentry/android/replay/SentryReplayModifiers$SentryPrivacy$1;->k:Lio/sentry/android/replay/SentryReplayModifiers$SentryPrivacy$1;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lio/sentry/android/replay/SentryReplayModifiers;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 11
    .line 12
    return-void
.end method
