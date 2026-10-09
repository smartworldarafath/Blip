.class public final Lio/ktor/http/Parameters$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic a:Lio/ktor/http/Parameters$Companion;

.field public static final b:Lio/ktor/http/EmptyParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/http/Parameters$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/http/Parameters$Companion;->a:Lio/ktor/http/Parameters$Companion;

    .line 7
    .line 8
    sget-object v0, Lio/ktor/http/EmptyParameters;->b:Lio/ktor/http/EmptyParameters;

    .line 9
    .line 10
    sput-object v0, Lio/ktor/http/Parameters$Companion;->b:Lio/ktor/http/EmptyParameters;

    .line 11
    .line 12
    return-void
.end method
