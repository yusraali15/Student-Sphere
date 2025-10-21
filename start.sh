#!/bin/bash

echo "🚀 Starting Student Sphere..."
echo ""

# Check if .env exists
if [ ! -f .env ]; then
    echo "❌ Error: .env file not found!"
    echo "Please copy .env.example to .env and configure it."
    exit 1
fi

# Check if node_modules exists
if [ ! -d node_modules ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Check database connection
echo "🔍 Checking database connection..."
npx prisma db pull --force 2>/dev/null
if [ $? -ne 0 ]; then
    echo "⚠️  Database not reachable. Starting Prisma Postgres..."
    echo ""
    echo "Please run in another terminal: npx prisma dev"
    echo "Then run this script again."
    exit 1
fi

# Run migrations
echo "🗄️  Running database migrations..."
npx prisma migrate dev --name init

# Generate Prisma Client
echo "⚙️  Generating Prisma Client..."
npx prisma generate

echo ""
echo "✅ Setup complete!"
echo ""
echo "🎉 Starting the app..."
echo "📍 Open http://localhost:3000"
echo ""

# Start Next.js
npm run dev
