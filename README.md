# Student Sphere

A modern discussion platform built exclusively for SRMIST students.

## Overview

Student Sphere is a community-driven platform where SRMIST students can discuss academic topics, share resources, and engage in campus-related conversations. Access is restricted to verified @srmist.edu.in email addresses.

## Features

- **Secure Authentication** - Google OAuth with email domain restriction
- **Discussion Forums** - Academic and non-academic categories
- **Community Engagement** - Upvote system and threaded comments
- **Smart Search** - Find posts and discussions quickly
- **User Profiles** - Personal dashboard with activity tracking
- **Content Moderation** - Admin tools for community safety
- **Real-time Notifications** - Stay informed about updates

## Technology

- Next.js 15 with React 19
- TypeScript for type safety
- Tailwind CSS for styling
- Prisma ORM with SQLite
- NextAuth.js for authentication
- Framer Motion for animations

## Environment Configuration

Create a `.env` file in the root directory:

```env
DATABASE_URL="file:./dev.db"
NEXTAUTH_URL="http://localhost:3000"
NEXTAUTH_SECRET="<generate-a-secure-random-string>"
GOOGLE_CLIENT_ID="<your-google-oauth-client-id>"
GOOGLE_CLIENT_SECRET="<your-google-oauth-client-secret>"
```

## Project Structure

```
app/
├── api/            # Backend API routes
├── admin/          # Admin dashboard
├── auth/           # Authentication pages
├── posts/          # Post detail pages
└── ...             # Other app pages

components/
├── ui/             # Reusable UI components
└── ...             # Feature components

lib/                # Utility functions
prisma/             # Database schema
public/             # Static assets
```

## Admin Features

Admin access is granted to `nt8486@srmist.edu.in`

- Dashboard with platform statistics
- Content management and moderation
- User management system
- Report handling and resolution

## Contributing

This is an academic project for SRMIST. For issues or suggestions, please contact the developer.
1) Fork the repository
2) Create a feature branch
3) Make your changes
4) Test thoroughly
5) Submit a pull request

## License

This project is licensed under the MIT License.
Academic Project - SRMIST

---

Developed for the SRMIST student community by Nipun Thakuria.
