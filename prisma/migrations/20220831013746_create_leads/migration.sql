-- CreateTable
CREATE TABLE "leads" (
    "lead_id" SERIAL NOT NULL,
    "complete_name" TEXT NOT NULL,
    "social_name" TEXT,
    "email" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "leads_pkey" PRIMARY KEY ("lead_id")
);
