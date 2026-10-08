.class public final Landroidx/datastore/core/UnInitialized;
.super Landroidx/datastore/core/State;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/core/State<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Landroidx/datastore/core/UnInitialized;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/core/UnInitialized;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/core/State;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/core/UnInitialized;->b:Landroidx/datastore/core/UnInitialized;

    .line 8
    .line 9
    return-void
.end method
