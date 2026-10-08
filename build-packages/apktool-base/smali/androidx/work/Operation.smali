.class public interface abstract Landroidx/work/Operation;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Operation$State;
    }
.end annotation


# static fields
.field public static final a:Landroidx/work/Operation$State$SUCCESS;

.field public static final b:Landroidx/work/Operation$State$IN_PROGRESS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/Operation$State$SUCCESS;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/work/Operation;->a:Landroidx/work/Operation$State$SUCCESS;

    .line 7
    .line 8
    new-instance v0, Landroidx/work/Operation$State$IN_PROGRESS;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/work/Operation;->b:Landroidx/work/Operation$State$IN_PROGRESS;

    .line 14
    .line 15
    return-void
.end method
